.class public abstract Lcom/google/firebase/auth/ActionCodeMultiFactorInfo;
.super Lcom/google/firebase/auth/ActionCodeInfo;
.source "com.google.firebase:firebase-auth@@19.3.1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/ActionCodeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMultiFactorInfo()Lcom/google/firebase/auth/MultiFactorInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
