.class public Lcom/vungle/warren/tasks/AnalyticsJob;
.super Ljava/lang/Object;
.source "AnalyticsJob.java"

# interfaces
.implements Lcom/vungle/warren/tasks/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/tasks/AnalyticsJob$Action;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:J = 0x7d0L

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action_extra"

.field private static final EXTRA_BODY:Ljava/lang/String; = "extra_body"

.field private static final EXTRA_URLS:Ljava/lang/String; = "extra_urls"

.field public static final TAG:Ljava/lang/String; = "AnalyticsJob"


# instance fields
.field private final adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/analytics/AdAnalytics;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    return-void
.end method

.method public static makeJob(ILjava/lang/String;[Ljava/lang/String;)Lcom/vungle/warren/tasks/JobInfo;
    .registers 5
    .param p0    # I
        .annotation build Lcom/vungle/warren/tasks/AnalyticsJob$Action;
        .end annotation
    .end param

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_extra"

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_body"

    .line 25
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra_urls"

    .line 26
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/vungle/warren/tasks/JobInfo;

    sget-object p1, Lcom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 30
    invoke-virtual {p0, v0}, Lcom/vungle/warren/tasks/JobInfo;->setExtras(Landroid/os/Bundle;)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 p1, 0x1

    const-wide/16 v0, 0x7d0

    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lcom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setRequiredNetworkType(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    const/4 p1, 0x5

    .line 33
    invoke-virtual {p0, p1}, Lcom/vungle/warren/tasks/JobInfo;->setPriority(I)Lcom/vungle/warren/tasks/JobInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/warren/tasks/JobRunner;)I
    .registers 5

    const-string p2, "action_extra"

    const/4 v0, -0x1

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "extra_body"

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    const-class v0, Lcom/google/gson/JsonElement;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 48
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {p2, p1}, Lcom/vungle/warren/analytics/AdAnalytics;->ri(Lcom/google/gson/JsonObject;)V

    goto :goto_3f

    :cond_26
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3f

    const-string p2, "extra_urls"

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 53
    iget-object v1, p0, Lcom/vungle/warren/tasks/AnalyticsJob;->adAnalytics:Lcom/vungle/warren/analytics/AdAnalytics;

    invoke-interface {v1, v0}, Lcom/vungle/warren/analytics/AdAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v1, v0

    if-eqz v1, :cond_3f

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    :cond_3f
    :goto_3f
    const/4 p1, 0x0

    return p1
.end method
