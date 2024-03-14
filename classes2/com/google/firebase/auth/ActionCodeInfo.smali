.class public Lcom/google/firebase/auth/ActionCodeInfo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field protected email:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeInfo;->email:Ljava/lang/String;

    return-object v0
.end method
