.class Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/core/AuthTokenProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidAuthTokenProvider;->forUnauthenticatedAccess()Lcom/google/firebase/database/core/AuthTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$0(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .registers 2

    const/4 v0, 0x0

    .line 77
    invoke-interface {p0, v0}, Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .registers 3

    .line 77
    invoke-static {p2}, Lcom/google/firebase/database/android/AndroidAuthTokenProvider$2$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getToken(ZLcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;)V
    .registers 3

    const/4 p1, 0x0

    .line 71
    invoke-interface {p2, p1}, Lcom/google/firebase/database/core/AuthTokenProvider$GetTokenCompletionListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public removeTokenChangeListener(Lcom/google/firebase/database/core/AuthTokenProvider$TokenChangeListener;)V
    .registers 2

    return-void
.end method
