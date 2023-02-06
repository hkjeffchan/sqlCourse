import datetime
from firebase_admin import firestore
import firebase_admin
from firebase_admin import credentials

cred = credentials.Certificate("serviceAccountKey.json")
firebase_admin.initialize_app(cred)

firestore_client = firestore.client()

doc = firestore_client.collection("student").document()
doc.set(
    {
        "name": "Larry Chan",
        "gender": "M",
        "dob": datetime.datetime(2020, 3, 3)
    }
)
