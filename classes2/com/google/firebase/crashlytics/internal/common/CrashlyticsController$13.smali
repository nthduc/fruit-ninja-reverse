.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->cacheKeyData(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

.field final synthetic val$keyData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;Ljava/util/Map;)V
    .registers 3

    .line 711
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->val$keyData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    # invokes: Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getCurrentSessionId()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->access$1900(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;)Ljava/lang/String;

    move-result-object v0

    .line 715
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->this$0:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsController$13;->val$keyData:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/crashlytics/internal/common/MetaDataStore;->writeKeyData(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
