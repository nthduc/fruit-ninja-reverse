.class public Lcom/google/firebase/auth/PhoneMultiFactorAssertion;
.super Lcom/google/firebase/auth/MultiFactorAssertion;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zza:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorAssertion;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    return-void
.end method


# virtual methods
.method public getFactorId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "phone"

    return-object v0
.end method

.method public final zza()Lcom/google/firebase/auth/PhoneAuthCredential;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    return-object v0
.end method
