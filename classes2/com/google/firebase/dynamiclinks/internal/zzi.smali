.class final Lcom/google/firebase/dynamiclinks/internal/zzi;
.super Lcom/google/firebase/dynamiclinks/internal/zzh;


# instance fields
.field private final zzr:Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzt:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/internal/zzh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zzr:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zzt:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    .registers 7

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 6
    :cond_4
    new-instance v0, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;

    invoke-direct {v0, p2}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;-><init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V

    :goto_9
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zzt:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    if-nez p2, :cond_11

    return-void

    .line 10
    :cond_11
    invoke-virtual {p2}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzf()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "scionData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 11
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_24

    goto :goto_49

    .line 13
    :cond_24
    iget-object p2, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zzr:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-nez p2, :cond_29

    return-void

    .line 15
    :cond_29
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/firebase/dynamiclinks/internal/zzi;->zzr:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    const-string v3, "fdl"

    invoke-interface {v2, v3, v0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_31

    :cond_49
    :goto_49
    return-void
.end method
