.class Lcom/google/games/bridge/AchievementUiRequest;
.super Lcom/google/games/bridge/SimpleUiRequest;
.source "AchievementUiRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AchievementUiRequest"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/google/games/bridge/SimpleUiRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntent(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {p1}, Lcom/google/games/bridge/HelperFragment;->getAccount(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
