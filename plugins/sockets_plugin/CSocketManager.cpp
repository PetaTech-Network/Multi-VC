/******************************************************
*
* Project:    ml_sockets (Win32, Linux).
* Website:    http://multitheftauto-modules.googlecode.com/
* Developers: Gamesnert
*
******************************************************/

#include "CSocketManager.h"

// Vector for holding all sockets
vector <CSocket*> vecSockets;

void CSocketManager::DoPulse()
{
    // Loop through all sockets
    for (unsigned int i = 0; i < vecSockets.size(); ++i)
    {
        // Get the socket by the ID
        CSocket* pSocket = vecSockets[i];

        // Do a pulse at the socket
        if (!pSocket->DoPulse())
        {
            // If the pulse indicates failure, remove the socket
            SocketRemove(pSocket);
        }
    }
}

void CSocketManager::SocketAdd(CSocket*& pSocket)
{
    // Add the socket to the loop stuff
    vecSockets.push_back(pSocket);
    // Loop through all sockets
    /*for (unsigned int i = 0; i < vecSockets.size(); ++i)
    {
        // If the current is the one we're looking for...
        if (vecSockets[i] == pSocket)
        {
			pSocket->SetID(i);
        }
    }*/
}

bool CSocketManager::SocketRemove(CSocket*& pSocket)
{
    // Check if an socket was actually specified
    if (pSocket == NULL)
        return false;

    // Loop through all sockets
    for (unsigned int i = 0; i < vecSockets.size(); ++i)
    {
        // If the current is the one we're looking for...
        if (vecSockets[i] == pSocket)
        {
            // Remove it from the vector and delete it, then return true
            vecSockets.erase(vecSockets.begin() + i);
            if(pSocket) delete (pSocket);
            return true;
        }
    }

    return false;
}

bool CSocketManager::GetSocket(CSocket*& pSocket, int ID)
{
    // Loop through all sockets
    for (unsigned int i = 0; i < vecSockets.size(); ++i)
    {
        // Compare the current socket's userdata with the one we're looking for
        if (vecSockets[i]->GetID() == ID)
        {
            // If it's the one we want, assign pSocket to it and return true
            pSocket = vecSockets[i];
            return true;
        }
    }

    return false;
}

void CSocketManager::HandleStop()
{
    // Triggered at module stop. Simply destroys all sockets
    for (unsigned int i = 0; i < vecSockets.size(); ++i)
        if (vecSockets[i]) delete (vecSockets[i]);
}
