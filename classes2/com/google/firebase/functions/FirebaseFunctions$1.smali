.class Lcom/google/firebase/functions/FirebaseFunctions$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"

# interfaces
.implements Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/functions/FirebaseFunctions;->lambda$maybeInstallProviders$0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderInstallFailed(ILandroid/content/Intent;)V
    .registers 3

    const-string p1, "FirebaseFunctions"

    const-string p2, "Failed to update ssl context"

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    # getter for: Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;
    invoke-static {}, Lcom/google/firebase/functions/FirebaseFunctions;->access$100()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderInstalled()V
    .registers 3

    .line 111
    # getter for: Lcom/google/firebase/functions/FirebaseFunctions;->providerInstalled:Lcom/google/android/gms/tasks/TaskCompletionSource;
    invoke-static {}, Lcom/google/firebase/functions/FirebaseFunctions;->access$100()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
