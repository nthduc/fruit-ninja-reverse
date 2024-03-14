.class public final Lcom/google/firebase/auth/api/internal/zzeh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# static fields
.field private static final zza:Landroid/util/SparseArray;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 64
    sput-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_CUSTOM_TOKEN"

    const-string v3, "The custom token format is incorrect. Please check the documentation."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4268

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CUSTOM_TOKEN_MISMATCH"

    const-string v3, "The custom token corresponds to a different audience."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_CREDENTIAL"

    const-string v3, "The supplied auth credential is malformed or has expired."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_EMAIL"

    const-string v3, "The email address is badly formatted."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4270

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WRONG_PASSWORD"

    const-string v3, "The password is invalid or the user does not have a password."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4271

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_MISMATCH"

    const-string v3, "The supplied credentials do not correspond to the previously signed in user."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4280

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_REQUIRES_RECENT_LOGIN"

    const-string v3, "This operation is sensitive and requires recent authentication. Log in again before retrying this request."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4276

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL"

    const-string v3, "An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4274

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_EMAIL_ALREADY_IN_USE"

    const-string v3, "The email address is already in use by another account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CREDENTIAL_ALREADY_IN_USE"

    const-string v3, "This credential is already associated with a different user account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4281

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_DISABLED"

    const-string v3, "The user account has been disabled by an administrator."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_TOKEN_EXPIRED"

    const-string v3, "The user\'s credential is no longer valid. The user must sign in again."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x427d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_NOT_FOUND"

    const-string v3, "There is no user record corresponding to this identifier. The user may have been deleted."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4273

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_USER_TOKEN"

    const-string v3, "This user\'s credential isn\'t valid for this project. This can happen if the user\'s token has been tampered with, or if the user isn\'t for the project associated with this API key."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4279

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_OPERATION_NOT_ALLOWED"

    const-string v3, "The given sign-in provider is disabled for this Firebase project. Enable it in the Firebase console, under the sign-in method tab of the Auth section."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEAK_PASSWORD"

    const-string v3, "The given password is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4282

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_EXPIRED_ACTION_CODE"

    const-string v3, "The out of band code has expired."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4285

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_ACTION_CODE"

    const-string v3, "The out of band code is invalid. This can happen if the code is malformed, expired, or has already been used."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4286

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_MESSAGE_PAYLOAD"

    const-string v3, "The email template corresponding to this action contains invalid characters in its message. Please fix by going to the Auth email templates section in the Firebase Console."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4287

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_RECIPIENT_EMAIL"

    const-string v3, "The email corresponding to this action failed to send as the provided recipient email address is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4289

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_SENDER"

    const-string v3, "The email template corresponding to this action contains an invalid sender email or name. Please fix by going to the Auth email templates section in the Firebase Console."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4288

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_EMAIL"

    const-string v3, "An email address must be provided."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x428a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_PASSWORD"

    const-string v3, "A password must be provided."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x428b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_PHONE_NUMBER"

    const-string v3, "To send verification codes, provide a phone number for the recipient."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4291

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_PHONE_NUMBER"

    const-string v3, "The format of the phone number provided is incorrect. Please enter the phone number in a format that can be parsed into E.164 format. E.164 phone numbers are written in the format [+][country code][subscriber number including area code]."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4292

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_VERIFICATION_CODE"

    const-string v3, "The Phone Auth Credential was created with an empty sms verification Code"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4293

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_VERIFICATION_CODE"

    const-string v3, "The sms verification code used to create the phone auth credential is invalid. Please resend the verification code sms and be sure use the verification code provided by the user."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4294

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_VERIFICATION_ID"

    const-string v3, "The Phone Auth Credential was created with an empty verification ID"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4295

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_VERIFICATION_ID"

    const-string v3, "The verification ID used to create the phone auth credential is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4296

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_RETRY_PHONE_AUTH"

    const-string v3, "An error occurred during authentication using the PhoneAuthCredential. Please retry authentication."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4299

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_SESSION_EXPIRED"

    const-string v3, "The sms code has expired. Please re-send the verification code to try again."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x429b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_QUOTA_EXCEEDED"

    const-string v3, "The sms quota for this project has been exceeded."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x429c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_APP_NOT_AUTHORIZED"

    const-string v3, "This app is not authorized to use Firebase Authentication. Please verify that the correct package name and SHA-1 are configured in the Firebase Console."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4284

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_API_NOT_AVAILABLE_WITHOUT_GOOGLE_PLAY"

    const-string v3, "The API that you are calling is not available on devices without Google Play services."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEB_INTERNAL_ERROR"

    const-string v3, "There was an internal error in the web widget."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_CERT_HASH"

    const-string v3, "There was an error while trying to get your package certificate hash."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEB_STORAGE_UNSUPPORTED"

    const-string v3, "This browser is not supported or 3rd party cookies and data may be disabled."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_CONTINUE_URI"

    const-string v3, "A continue URL must be provided in the request."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4290

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_DYNAMIC_LINK_NOT_ACTIVATED"

    const-string v3, "Please activate Dynamic Links in the Firebase Console and agree to the terms and conditions."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42ac

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_PROVIDER_ID"

    const-string v3, "The provider ID provided for the attempted web operation is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42af

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEB_CONTEXT_ALREADY_PRESENTED"

    const-string v3, "A headful operation is already in progress. Please wait for that to finish."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEB_CONTEXT_CANCELED"

    const-string v3, "The web operation was canceled by the user."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42a2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_TENANT_ID_MISMATCH"

    const-string v3, "The provided tenant ID does not match the Auth instance\'s tenant ID."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_UNSUPPORTED_TENANT_OPERATION"

    const-string v3, "This operation is not supported in a multi-tenant context."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_DYNAMIC_LINK_DOMAIN"

    const-string v3, "The provided dynamic link domain is not configured or authorized for the current project."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_REJECTED_CREDENTIAL"

    const-string v3, "The request contains malformed or mismatching credentials"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_PHONE_NUMBER_NOT_FOUND"

    const-string v3, "The provided phone number does not match any of the second factor phone numbers associated with this user."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_TENANT_ID"

    const-string v3, "The Auth instance\'s tenant ID is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_SECOND_FACTOR_REQUIRED"

    const-string v3, "Please complete a second factor challenge to finish signing into this account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_API_NOT_AVAILABLE"

    const-string v3, "The API that you are calling is not available."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_MULTI_FACTOR_SESSION"

    const-string v3, "The request is missing proof of first factor successful sign-in."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42b9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_MULTI_FACTOR_INFO"

    const-string v3, "No second factor identifier is provided."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42ba

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_MULTI_FACTOR_SESSION"

    const-string v3, "The request does not contain a valid proof of first factor successful sign-in."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42bb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MULTI_FACTOR_INFO_NOT_FOUND"

    const-string v3, "The user does not have a second factor matching the identifier provided."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42bc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_ADMIN_RESTRICTED_OPERATION"

    const-string v3, "This operation is restricted to administrators only."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42bd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_UNVERIFIED_EMAIL"

    const-string v3, "This operation requires a verified email."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42be

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_SECOND_FACTOR_ALREADY_ENROLLED"

    const-string v3, "The second factor is already enrolled on this account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42bf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MAXIMUM_SECOND_FACTOR_COUNT_EXCEEDED"

    const-string v3, "The maximum allowed number of second factors on a user has been exceeded."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_UNSUPPORTED_FIRST_FACTOR"

    const-string v3, "Enrolling a second factor or signing in with a multi-factor account requires sign-in with a supported first factor."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_EMAIL_CHANGE_NEEDS_VERIFICATION"

    const-string v3, "Multi-factor users must always have a verified email."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INTERNAL_SUCCESS_SIGN_OUT"

    const-string v3, "This is an internal error code indicating that the operation was successful but the user needs to be signed out."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_CLIENT_IDENTIFIER"

    const-string v3, "This request is missing a reCAPTCHA token."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_MISSING_OR_INVALID_NONCE"

    const-string v3, "The request does not contain a valid nonce. This can occur if the SHA-256 hash of the provided raw nonce does not match the hashed nonce in the ID token payload."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x42c6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_CANCELLED"

    const-string v3, "The user did not grant your application the permissions it requested."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4651

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x427c

    if-eq v0, v2, :cond_f1

    const/16 v2, 0x427d

    if-eq v0, v2, :cond_e7

    const/16 v2, 0x429b

    if-eq v0, v2, :cond_dd

    const/16 v2, 0x429c

    if-eq v0, v2, :cond_d7

    const/16 v2, 0x42a1

    if-eq v0, v2, :cond_cd

    const/16 v2, 0x42a2

    if-eq v0, v2, :cond_cd

    const-string v2, "An internal error has occurred."

    sparse-switch v0, :sswitch_data_fe

    packed-switch v0, :pswitch_data_180

    packed-switch v0, :pswitch_data_18c

    packed-switch v0, :pswitch_data_196

    packed-switch v0, :pswitch_data_1aa

    packed-switch v0, :pswitch_data_1bc

    packed-switch v0, :pswitch_data_1ca

    .line 38
    new-instance p0, Lcom/google/firebase/FirebaseException;

    invoke-direct {p0, v2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_41
    const-string v0, "There was a failure in the connection between the web widget and the Firebase Auth backend."

    .line 34
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance v0, Lcom/google/firebase/FirebaseNetworkException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseNetworkException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 29
    :pswitch_4d
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthEmailException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthEmailException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 28
    :pswitch_57
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 7
    :pswitch_61
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;

    .line 8
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_6f
    const-string v0, "User was not linked to an account with the given provider."

    .line 20
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 21
    new-instance v0, Lcom/google/firebase/FirebaseException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_7b
    const-string v0, "User has already been linked to the given provider."

    .line 23
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v0, Lcom/google/firebase/FirebaseException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4
    :pswitch_87
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 17
    :sswitch_91
    invoke-static {v2, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v0, Lcom/google/firebase/FirebaseException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_9b
    const-string v0, "Please sign in before trying to get a token."

    .line 26
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance v0, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;

    invoke-direct {v0, p0}, Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 32
    :pswitch_a7
    :sswitch_a7
    new-instance p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    invoke-direct {p0, v1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    return-object p0

    :sswitch_ad
    const-string v0, "We have blocked all requests from this device due to unusual activity. Try again later."

    .line 11
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Lcom/google/firebase/FirebaseTooManyRequestsException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseTooManyRequestsException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 5
    :pswitch_b9
    :sswitch_b9
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 37
    :pswitch_c3
    :sswitch_c3
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 36
    :cond_cd
    :pswitch_cd
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthWebException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthWebException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 31
    :cond_d7
    new-instance p0, Lcom/google/firebase/FirebaseTooManyRequestsException;

    invoke-direct {p0, v1}, Lcom/google/firebase/FirebaseTooManyRequestsException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 30
    :cond_dd
    :pswitch_dd
    :sswitch_dd
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 6
    :cond_e7
    :pswitch_e7
    :sswitch_e7
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;

    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_f1
    const-string v0, "A network error (such as timeout, interrupted connection or unreachable host) has occurred."

    .line 14
    invoke-static {v0, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Lcom/google/firebase/FirebaseNetworkException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseNetworkException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_fe
    .sparse-switch
        0x4268 -> :sswitch_dd
        0x426a -> :sswitch_dd
        0x426c -> :sswitch_dd
        0x426d -> :sswitch_e7
        0x426e -> :sswitch_c3
        0x426f -> :sswitch_b9
        0x4270 -> :sswitch_dd
        0x4271 -> :sswitch_dd
        0x4272 -> :sswitch_ad
        0x4273 -> :sswitch_e7
        0x4274 -> :sswitch_b9
        0x4299 -> :sswitch_dd
        0x42ac -> :sswitch_c3
        0x42b5 -> :sswitch_dd
        0x42b7 -> :sswitch_c3
        0x42b8 -> :sswitch_a7
        0x42b9 -> :sswitch_dd
        0x42ba -> :sswitch_dd
        0x42bb -> :sswitch_dd
        0x42bc -> :sswitch_dd
        0x42bd -> :sswitch_c3
        0x42be -> :sswitch_c3
        0x42bf -> :sswitch_c3
        0x42c0 -> :sswitch_c3
        0x42c1 -> :sswitch_c3
        0x42c2 -> :sswitch_c3
        0x42c3 -> :sswitch_c3
        0x42c5 -> :sswitch_c3
        0x42c6 -> :sswitch_dd
        0x4457 -> :sswitch_9b
        0x445b -> :sswitch_91
        0x4651 -> :sswitch_c3
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x4276
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_e7
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x4280
        :pswitch_dd
        :pswitch_b9
        :pswitch_61
    .end packed-switch

    :pswitch_data_196
    .packed-switch 0x4284
        :pswitch_c3
        :pswitch_57
        :pswitch_57
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_dd
        :pswitch_dd
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x4290
        :pswitch_c3
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
    .end packed-switch

    :pswitch_data_1bc
    .packed-switch 0x42a5
        :pswitch_41
        :pswitch_cd
        :pswitch_a7
        :pswitch_c3
        :pswitch_cd
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x42af
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_c3
        :pswitch_dd
    .end packed-switch
.end method

.method public static zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/FirebaseException;
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x4274

    if-eq v0, v1, :cond_13

    const/16 v1, 0x426f

    if-eq v0, v1, :cond_13

    const/16 v1, 0x4281

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_34

    .line 43
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    .line 44
    new-instance v1, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    .line 45
    invoke-static {v0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, p1}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zzb(Ljava/lang/String;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    move-result-object p0

    return-object p0

    .line 47
    :cond_34
    invoke-static {p0}, Lcom/google/firebase/auth/api/internal/zzeh;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/firebase_auth/zzej;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;
    .registers 6
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzav;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    const/16 v1, 0x42b6

    .line 51
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 52
    new-instance v1, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {p1, p0, p2}, Lcom/google/firebase/auth/internal/zzt;->zza(Lcom/google/android/gms/internal/firebase_auth/zzej;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/internal/zzt;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lcom/google/firebase/auth/FirebaseAuthMultiFactorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorResolver;)V

    return-object v1
.end method

.method private static zza(I)Ljava/lang/String;
    .registers 2

    .line 59
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_f

    .line 60
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_f
    const-string p0, "INTERNAL_ERROR"

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;
    .registers 4

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 57
    :cond_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " [ %s ]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(I)Ljava/lang/String;
    .registers 2

    .line 61
    sget-object v0, Lcom/google/firebase/auth/api/internal/zzeh;->zza:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_f

    .line 62
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_f
    const-string p0, "An internal error has occurred."

    return-object p0
.end method
