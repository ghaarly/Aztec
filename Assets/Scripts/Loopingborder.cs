using UnityEngine;

public class Loopingborder : MonoBehaviour
{
    public RectTransform image1;
    public RectTransform image2;
    public float speed = 220f; 

    private float imageWidth;

    void Start()
    {
        imageWidth = image1.rect.width;

        image1.anchoredPosition = new Vector2(0, image1.anchoredPosition.y);
        image2.anchoredPosition = new Vector2(imageWidth, image1.anchoredPosition.y);
    }

    void Update()
    {
        float movement = speed * Time.deltaTime;

        image1.anchoredPosition -= new Vector2(movement, 0);
        image2.anchoredPosition -= new Vector2(movement, 0);

        if (image1.anchoredPosition.x <= -imageWidth)
        {
            image1.anchoredPosition = new Vector2(image2.anchoredPosition.x + imageWidth, image1.anchoredPosition.y);
        }

        if (image2.anchoredPosition.x <= -imageWidth)
        {
            image2.anchoredPosition = new Vector2(image1.anchoredPosition.x + imageWidth, image2.anchoredPosition.y);
        }
    }
}
