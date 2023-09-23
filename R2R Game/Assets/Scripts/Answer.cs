using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Answer : MonoBehaviour
{

    
    public TMP_Text theText;
    // Start is called before the first frame update
    void Start()
    {
        
    }
    public void SetText(string laText)
    {
        theText.text = laText;
    }
}
