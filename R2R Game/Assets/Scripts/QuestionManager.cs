using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

public class QuestionManager : MonoBehaviour
{
    [SerializeField] public TMPro.TMP_Text Question_text;
    [SerializeField] public TMPro.TMP_Text Ans1_text;
    [SerializeField] public TMPro.TMP_Text Ans2_text;
    [SerializeField] public TMPro.TMP_Text Ans3_text;
    [SerializeField] public TMPro.TMP_Text Ans4_text;
    [SerializeField] public TMPro.TMP_Text scoreText;
    [SerializeField] public TMPro.TMP_Text timerText;

    public string startingScore;
    public string timerStringStartingPoint;
    public int score;
    public float questionTimer;
    public int isFinished;
    public bool canfinish;
    public Question question;
    public float commandTimer;

    public GameObject[] answers;
    public GameObject waitingRoom;
    public GameObject afterFinish;
    public GameObject theGameBoard;

    [SerializeField] public int currentQuestion;

    void Start()
    {
        commandTimer = 1;
        canfinish = false;
        isFinished = 0;
        questionTimer = 10f;
        timerStringStartingPoint = timerText.text;
        startingScore = scoreText.text;
        score = 0;
        scoreText.text = startingScore + score;
        currentQuestion = 0;
        InstantiateQuestion();
    }

    private void Update()
    {
        questionTimer -= Time.deltaTime;
        commandTimer -= Time.deltaTime;

        timerText.text = timerStringStartingPoint + (int)questionTimer;
        if (questionTimer <= 0)
        {
            InstantiateQuestion();
            questionTimer = 10;
        }

        if (isFinished == 1 && !canfinish && commandTimer <= 0)
        {
            CheckIfBothFinished();
            commandTimer = 1;
        }

        if (isFinished == 1 && canfinish)
        {
            afterFinish.SetActive(true);
        }
    }

    public void CheckIfBothFinished()
    {
        StartCoroutine(CanFinishGame());
    }

    IEnumerator GetQuestion(int id)
    {
        UnityWebRequest www = UnityWebRequest.Get("https://localhost:44330/api/GetQuestion/" + id);
        yield return www.SendWebRequest();

        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.Log(www.error);
            yield break;
        }

        questionTimer = 10;
        question = JsonUtility.FromJson<Question>(www.downloadHandler.text);

        if (question != null)
        {
            Question_text.text = question.text;
            Ans1_text.text = question.ans1;
            Ans2_text.text = question.ans2;
            Ans3_text.text = question.ans3;
            Ans4_text.text = question.ans4;
        }
    }

    public void IsCorrectAnswer(GameObject theAnswerButtton)
    {
        if (theAnswerButtton == answers[0])
        {
            score += (int)questionTimer;
            scoreText.text = startingScore + score;
        }
    }

    IEnumerator SetScoreToDB()
    {
        UnityWebRequest www = UnityWebRequest.Get($"https://localhost:44330/api/Score?Score={score + 1}&name={LoginPageDone.playerName}&isFinished={isFinished}");
        yield return www.SendWebRequest();

        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.Log(www.error);
            yield break;
        }
    }

    IEnumerator CanFinishGame()
    {
        UnityWebRequest www = UnityWebRequest.Get("https://localhost:44330/api/CanFinishGame");
        yield return www.SendWebRequest();

        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.Log(www.error);
            yield break;
        }

        canfinish = bool.Parse(www.downloadHandler.text);
    }

    public void InstantiateQuestion()
    {
        StartCoroutine(UpdateScoreAndFetchQuestion());
    }

    IEnumerator UpdateScoreAndFetchQuestion()
    {
        yield return SetScoreToDB();

        currentQuestion++;
        if (currentQuestion > 5)
        {
            isFinished = 1;
            yield return SetScoreToDB();
            LoginPageDone.canStartGame = false;
            waitingRoom.SetActive(true);
        }
        else
        {
            yield return GetQuestion(currentQuestion);
        }
    }
}
