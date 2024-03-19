using System.Collections.Generic;
using System.Linq;
using Cinemachine;
using UnityEngine;

public class CameraSwitcher : MonoBehaviour
{
    [field: SerializeField] public CinemachineVirtualCamera Cam45Corner { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera CamAbove { get; private set; }
    [field: SerializeField] public CinemachineVirtualCamera CamSide { get; private set; }

    private List<CinemachineVirtualCamera> _listCams;

    private void Start()
    {
        _listCams = new List<CinemachineVirtualCamera>
        {
             CamAbove, CamSide, Cam45Corner
        };
    }

    public void CamSwitcher(CinemachineVirtualCamera cam)
    {
        var mainCamera = _listCams
            .FirstOrDefault(x => x == cam);
        if (mainCamera != null) mainCamera.Priority = 1;
        
        _listCams
            .Where(virtualCamera => virtualCamera != cam)
            .ToList()
            .ForEach(camera => camera.Priority = 0);
    }
}
