.class final Lcom/google/firebase/auth/api/internal/zzfi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfl;


# instance fields
.field private final synthetic zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzfg;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfi;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V
    .registers 4

    .line 2
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfi;->zza:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;->zza()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    return-void
.end method
