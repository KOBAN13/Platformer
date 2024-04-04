using UnityEngine;

namespace Music
{
    public class AudioController : MonoBehaviour
    {
        [field: SerializeField] public AudioSource AudioSource { get; private set; }
        
        [field: Header("Music and Sound")]
        [field: SerializeField] public AudioClip Embient { get; private set; }
        [field: SerializeField] public AudioClip Boy { get; private set; }
        [field: SerializeField] public AudioClip Spirit { get; private set; }
        [field: SerializeField] public AudioClip Move { get; private set; }

        public void PlayMusic(AudioClip audioClip)
        {
            AudioSource.clip = audioClip;
            AudioSource.Play();
        }

        public void PlayLoop(AudioClip audioSource, bool isLoop)
        {
            AudioSource.loop = isLoop;
        }
        
    }
}