.class public Lcom/google/firebase/FirebaseNetworkException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-common@@19.3.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
