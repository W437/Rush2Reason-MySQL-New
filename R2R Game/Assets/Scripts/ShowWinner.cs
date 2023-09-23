using System.Collections;
using System.Collections.Generic;
using UnityEngine.Networking;
using UnityEngine;
using TMPro;

public class ShowWinner : MonoBehaviour
{
    public string showWinnerText;
    public TMP_Text showWinnerOnScreenText;
    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(SetScoreToDB());
    }
    IEnumerator SetScoreToDB()
    {
        UnityWebRequest www = UnityWebRequest.Get("https://localhost:44330/api/ShowWinner");
        yield return www.SendWebRequest();
        if (www.result != UnityWebRequest.Result.Success)
        {
            Debug.Log(www.error);
        }
        else
        {
            showWinnerText = www.downloadHandler.text;
            showWinnerOnScreenText.text = showWinnerText; 
        }
    }
    // Update is called once per frame
    void Update()
    {
        
    }
}
