/*
 * Copyright (c) 2016, Michael Mitterer (office@mikemitterer.at),
 * IT-Consulting and Development Limited.
 * 
 * All Rights Reserved.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
     
part of latlong;

class LatLng {
    // final Logger _logger = new Logger('latlong.LatLng');

    double _latitude;
    double _longitude;

    LatLng(this._latitude, this._longitude) {
        Validate.inclusiveBetween(-90.0,90.0,_latitude,"Latitude must be between -90 and 90 degrees but was $_latitude");
        Validate.inclusiveBetween(-180.0,180.0,_longitude,"Longitude must be between -90 and 90 degrees but was $_longitude");
    }

    double get latitude => _latitude;

    double get longitude => _longitude;

    double get latitudeInRad => _degToRad(latitude);

    double get longitudeInRad => _degToRad(_longitude);

    String toString() => 'LatLng(latitude:$latitude, longitude:$longitude)';

    int get hashCode => latitude.hashCode + longitude.hashCode;

    bool operator==(final LatLng other) => latitude == other.latitude && longitude == other.longitude;

    //- private -----------------------------------------------------------------------------------

    double _degToRad(final double deg) => deg * (math.PI / 180);
}