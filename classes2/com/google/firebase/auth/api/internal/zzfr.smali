.class public final Lcom/google/firebase/auth/api/internal/zzfr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public static zza(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/internal/firebase_auth/zzgg;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd()Z

    move-result p0

    .line 4
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzgg;->zzb(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase_auth/zzgg;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1b
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd()Z

    move-result p0

    .line 7
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/firebase_auth/zzgg;->zza(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase_auth/zzgg;

    move-result-object p0

    return-object p0
.end method
