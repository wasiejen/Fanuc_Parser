import numpy as np

def newtonian_search(pa, pe, point_x):
    '''
    :param pa: Punkt Anfang der Strecke
    :param pe: Punkt Ende der Strecke
    :param point_x: Punkt zu welchem der naechst gelegene Punkt auf Strecke pa-pe ermittelt werden soll
    :return: naechstgelegener Punkt auf Strecke pa-pe zu px, und die Distanz zu px
    '''
    #print(pa, pe, point_x)
    old_distance = 9999
    epsilon = 9999
    point_found = None
    point_1 = pa
    point_2 = pe

    distance_pa = np.linalg.norm(point_1 - point_x)
    distance_pe = np.linalg.norm(point_2 - point_x)

    while epsilon > 0.0001:

        distance1 = np.linalg.norm(point_1 - point_x)
        distance2 = np.linalg.norm(point_2 - point_x)
        orientation_strecke = point_2 - point_1
        # distance_strecke = np.linalg.norm(orientation_strecke)
        # print(distance1, distance2, orientation_strecke)

        if distance1 < distance2:
            point_found = point_1
            point_2 = point_1 + (orientation_strecke / 2)
            epsilon = abs(distance2 - old_distance)
            old_distance = distance2
        else:
            point_found = point_2
            point_1 = point_1 + (orientation_strecke / 2)
            epsilon = abs(distance1 - old_distance)
            old_distance = distance1


        # print("epsilon: ", epsilon)

    if distance_pa < old_distance:
        return (pa, distance_pa)
    if distance_pe < old_distance:
        return (pe, distance_pe)
    else:
        return (point_found, old_distance)

if __name__ == '__main__':

    a = np.array([0,5,3])
    b = np.array([5,0,3])
    c = np.array([2.45,1,0])

    print(newtonian_search(a, b, c))