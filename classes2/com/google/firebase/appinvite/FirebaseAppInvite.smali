.class public abstract Lcom/google/firebase/appinvite/FirebaseAppInvite;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvitation(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/google/firebase/appinvite/FirebaseAppInvite;
    .registers 3

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getExtensions()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    const-string v1, "com.google.firebase.appinvite.fdl.extension.InvitationId"

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/appinvite/zzt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/appinvite/zzt;-><init>(Landroid/os/Bundle;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method public abstract getInvitationId()Ljava/lang/String;
.end method
