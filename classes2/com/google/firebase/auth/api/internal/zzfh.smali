.class final Lcom/google/firebase/auth/api/internal/zzfh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzfl;


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/api/internal/zzfg;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfh;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V
    .registers 3

    .line 2
    iget-object p2, p0, Lcom/google/firebase/auth/api/internal/zzfh;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void
.end method
