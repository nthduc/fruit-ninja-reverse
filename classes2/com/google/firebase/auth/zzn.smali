.class final Lcom/google/firebase/auth/zzn;
.super Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/zzn;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .registers 4

    .line 4
    iget-object p2, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    iget-object v0, p0, Lcom/google/firebase/auth/zzn;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/zzo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzo;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    return-void
.end method
