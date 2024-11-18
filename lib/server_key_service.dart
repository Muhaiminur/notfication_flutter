import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:googleapis_auth/auth_io.dart';

class ServerKeyService {
  Future<String> getServiceKey() async {
    final scopes = [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging'
    ];

    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson({
          "type": "service_account",
          "project_id": "fir-abir-e6326",
          "private_key_id": "01235e0da7b5a6314d25398da4edd9fadbe9aebf",
          "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCb8ejnUkRGtZkR\nKosDASJin4RJPM+EKgcd08oEvJeP8tF4Vdj6TKRcLmL4cHunBwX8RXGPhuAjhyye\nGU/Mw26EI8sqNJ188Mq1CGHmXLtmaskmdJ6uFypC6A8U25G4c8k3CsqW6LryCtr3\nfSJ9ivtdIC5QTGkt5sUZt28HxdlYIUyDvT4ZZmqM7yPL2f7s2M2JkBHt7+datA7q\nAvnDlv5DnQrKdVTTNv2g08utqynNIbFBvYICOCTkPB/ZT8JscF4eEscPVrykVRLE\no9mFDhPKQMl2n8UlBQU4mi2a1QSCTLOCnOsUvCGAH/8G2Z1WiLoomq76c1qif0AQ\nzGOCw01FAgMBAAECggEADDfjKS4AwSTdANjQpSQeHGm7f3zUai+xeLdNgUXWKYZQ\nvjkaXoYfF0U1JkUIky4m3GdZKJyHNua86rLjVeZMDu4Prtdfgti08S6JHnej4Tg7\nBBh9ZE4sAVZVntXomsdLpn83H1AjHEVtzEKm2fzyiTnfwb/dj9CgdHgzAAIS75Im\nWBFiDbPNLBlwplT9zyzXF4DBh8pOeSW0APUN+G5BPpzB5J0Hq6NXaxmVN7Ke/iWo\nZoqOc8Xno725SWEzlHP2opOSwcmsX9F1/EgQUCLKNHybvSj39g6kswXPAuJEtNNX\nkj+pUwPMuCjNk5AklbjbQxyKCMoX2Orvmvh3aSVMsQKBgQDON5q4HBT4uCPemZVP\nxkxvLIJyQ2kxB678V0xJmdpj4WEeFtUKOQZRlj3pfvkwVHPvvKbG/CypF+SppBM9\nN1sAKSL+zycJm//G1CpTwKzyMyTdBSMbqZ33LjDNqzaPNFEWAKUTgS140009LccF\nKnsUN+RWwIu3Y/kQhEa3O6U6GQKBgQDBl3BM4k/dJFdeXkAfqHCE70EBqclY/zqP\nXsUAEuzFe2+boniqwcqdaWLB509iSaQMYFsO1LyMyquET9n/3GemNC0lZ4reaEWV\n1pBgaDMdOPD0F1AVyr4SwIZ42qyL1auxke1LRAgNxqF2lt7A/nA65Mgiw7/FdhL1\nx39p5/lqDQKBgDl5sfvCh+3SlNzD/aOgZ0lNJIZoV3c85v6Z7j9NTFsuQ/046+PP\nhP1UXKkppJZd03psICexvVjbufW2L06OkSR4UrKmVgENo7ptA+cX+pv+uTWI6wIY\nwlhUXXHVWH2NXVQ+lcPb6yqT6iE1ExVTg75c3Z14SPiyOobp9zO2whRxAoGAYpEQ\nhJTVxOqz8UBbtcK1R3npx0cDVWTeFBFUjG0WUJZAhSV7+rUgzHTT65YyPQDxnbuR\noUN/nM+z9HITtMorm9wFAH5vnj3I8DmG2Q80tzQ+uokEJZRMoo+T6ASuxaPM/2Ql\nRaUl1J3Fp/O5BtqFmfbST6ELCybLEIi6vtl1jCECgYBm0pgK98cwVptA+8I4iqop\nwJxNJF1Yk7CqmfrNY/uXFdkzD8ugaOHuiL3wdbJ1NLi5gpzJg9OgRWc1WWoLFeJo\ngCDWLcZhjquztViXSkvmneAlNDTGYeYnms/WezCGJ4Lxn8AcX4yxAd4ur/K5fJZ8\nPpa0LmdldUSNnktT5325iw==\n-----END PRIVATE KEY-----\n",
          "client_email": "firebase-adminsdk-wlk4s@fir-abir-e6326.iam.gserviceaccount.com",
          "client_id": "100814729059633299675",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-wlk4s%40fir-abir-e6326.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        }),
        scopes);
    final serverKey = client.credentials.accessToken.data;
    return serverKey;
  }


}