using System.Collections.Generic;
using System.Linq;
using Cinemachine;
using UnityEngine;

public class CameraSwitcher : MonoBehaviour
{
    [field: SerializeField] public CinemachineVirtualCamera Cam45Corner { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera LowerRightCorner { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera UpperRightCorner { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera UpperLeftCorner { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera LowerLeftCorner { get; private set; }
    
    
    [field: SerializeField] public CinemachineVirtualCamera CamAbove { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera CamSide { get; private set; }

    private List<CinemachineVirtualCamera> _listCams;
    private List<CinemachineVirtualCamera> _listCamsMouseClick;

    public IReadOnlyList<CinemachineVirtualCamera> ReadOnlyListCams { get; private set; }
    public IReadOnlyList<CinemachineVirtualCamera> ReadOnlyListCamsMouseClick { get; private set; }

    private void Start()
    {
        _listCams = new List<CinemachineVirtualCamera>
        {
             CamAbove, CamSide, Cam45Corner, LowerRightCorner, UpperRightCorner, UpperLeftCorner, LowerLeftCorner
        };

        ReadOnlyListCams = new List<CinemachineVirtualCamera>(_listCams);

        _listCamsMouseClick = new List<CinemachineVirtualCamera>
        {
            LowerLeftCorner, UpperLeftCorner, UpperRightCorner, LowerRightCorner
        };
        
        ReadOnlyListCamsMouseClick = new List<CinemachineVirtualCamera>(_listCamsMouseClick);
    }

    public void CamSwitcher(CinemachineVirtualCamera cam, IReadOnlyList<CinemachineVirtualCamera> readOnlyList)
    {
        var mainCamera = readOnlyList
            .FirstOrDefault(x => x == cam);
        if (mainCamera != null) mainCamera.Priority = 1;
        
        readOnlyList
            .Where(virtualCamera => virtualCamera != cam)
            .ToList()
            .ForEach(camera => camera.Priority = 0);
    }
}
