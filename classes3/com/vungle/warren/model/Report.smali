.class public Lcom/vungle/warren/model/Report;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Report$UserAction;,
        Lcom/vungle/warren/model/Report$Status;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x3

.field public static final NEW:I = 0x0

.field public static final READY:I = 0x1

.field public static final SENDING:I = 0x2


# instance fields
.field adDuration:J

.field adSize:Ljava/lang/String;

.field adStartTime:J

.field adToken:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field advertisementID:Ljava/lang/String;

.field appId:Ljava/lang/String;

.field assetDownloadDuration:J

.field campaign:Ljava/lang/String;

.field final clickedThrough:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field headerBidding:Z

.field incentivized:Z

.field initTimeStamp:J

.field ordinal:I

.field placementId:Ljava/lang/String;

.field status:I

.field templateId:Ljava/lang/String;

.field ttDownload:J

.field url:Ljava/lang/String;

.field final userActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report$UserAction;",
            ">;"
        }
    .end annotation
.end field

.field userID:Ljava/lang/String;

.field videoLength:J

.field videoViewed:I

.field volatile wasCTAClicked:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/vungle/warren/model/Report;->status:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLcom/vungle/warren/SessionData;)V
    .registers 13
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    .line 183
    invoke-direct/range {v0 .. v6}, Lcom/vungle/warren/model/Report;-><init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/model/Advertisement;Lcom/vungle/warren/model/Placement;JLjava/lang/String;Lcom/vungle/warren/SessionData;)V
    .registers 8
    .param p1    # Lcom/vungle/warren/model/Advertisement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/model/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/vungle/warren/model/Report;->status:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    .line 197
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    .line 201
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    .line 202
    invoke-virtual {p2}, Lcom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result p2

    iput-boolean p2, p0, Lcom/vungle/warren/model/Report;->headerBidding:Z

    .line 203
    iput-wide p3, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    .line 204
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    const-wide/16 p2, -0x1

    .line 205
    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->ttDownload:J

    .line 206
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    if-eqz p6, :cond_58

    .line 207
    invoke-virtual {p6}, Lcom/vungle/warren/SessionData;->getInitTimeStamp()J

    move-result-wide p2

    goto :goto_5a

    :cond_58
    const-wide/16 p2, 0x0

    :goto_5a
    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    .line 208
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAssetDownloadDuration()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    .line 209
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdType()I

    move-result p2

    if-eqz p2, :cond_78

    const/4 p3, 0x1

    if-ne p2, p3, :cond_70

    const-string p2, "vungle_mraid"

    .line 214
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    goto :goto_7c

    .line 217
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown ad type, cannot process!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    const-string p2, "vungle_local"

    .line 211
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    .line 219
    :goto_7c
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getTemplateId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    if-nez p5, :cond_89

    const-string p2, ""

    .line 221
    iput-object p2, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    goto :goto_8b

    .line 223
    :cond_89
    iput-object p5, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    .line 225
    :goto_8b
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/warren/AdConfig;->getOrdinal()I

    move-result p2

    iput p2, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    .line 227
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 229
    invoke-virtual {p1}, Lcom/vungle/warren/AdConfig$AdSize;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    :cond_a9
    return-void
.end method


# virtual methods
.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_6

    .line 509
    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_166

    .line 510
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    goto/16 :goto_166

    .line 512
    :cond_15
    check-cast p1, Lcom/vungle/warren/model/Report;

    .line 514
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_163

    if-nez v2, :cond_23

    monitor-exit p0

    return v1

    .line 515
    :cond_23
    :try_start_23
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_163

    if-nez v2, :cond_2f

    monitor-exit p0

    return v1

    .line 516
    :cond_2f
    :try_start_2f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_163

    if-nez v2, :cond_3b

    monitor-exit p0

    return v1

    .line 517
    :cond_3b
    :try_start_3b
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->incentivized:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->incentivized:Z
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_163

    if-eq v2, v3, :cond_43

    monitor-exit p0

    return v1

    .line 518
    :cond_43
    :try_start_43
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->headerBidding:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->headerBidding:Z
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_163

    if-eq v2, v3, :cond_4b

    monitor-exit p0

    return v1

    .line 519
    :cond_4b
    :try_start_4b
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->adStartTime:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adStartTime:J
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_55

    monitor-exit p0

    return v1

    .line 520
    :cond_55
    :try_start_55
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_163

    if-nez v2, :cond_61

    monitor-exit p0

    return v1

    .line 521
    :cond_61
    :try_start_61
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->videoLength:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->videoLength:J
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6b

    monitor-exit p0

    return v1

    .line 522
    :cond_6b
    :try_start_6b
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->adDuration:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adDuration:J
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_75

    monitor-exit p0

    return v1

    .line 523
    :cond_75
    :try_start_75
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->ttDownload:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->ttDownload:J
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7f

    monitor-exit p0

    return v1

    .line 524
    :cond_7f
    :try_start_7f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_163

    if-nez v2, :cond_8b

    monitor-exit p0

    return v1

    .line 525
    :cond_8b
    :try_start_8b
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_163

    if-nez v2, :cond_97

    monitor-exit p0

    return v1

    .line 526
    :cond_97
    :try_start_97
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_163

    if-nez v2, :cond_a3

    monitor-exit p0

    return v1

    .line 527
    :cond_a3
    :try_start_a3
    iget-boolean v2, p1, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_163

    if-eq v2, v3, :cond_ab

    monitor-exit p0

    return v1

    .line 528
    :cond_ab
    :try_start_ab
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_163

    if-nez v2, :cond_b7

    monitor-exit p0

    return v1

    .line 529
    :cond_b7
    :try_start_b7
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c1

    monitor-exit p0

    return v1

    .line 530
    :cond_c1
    :try_start_c1
    iget-wide v2, p1, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_163

    cmp-long v6, v2, v4

    if-eqz v6, :cond_cb

    monitor-exit p0

    return v1

    .line 532
    :cond_cb
    :try_start_cb
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_d7
    .catchall {:try_start_cb .. :try_end_d7} :catchall_163

    if-eq v2, v3, :cond_db

    monitor-exit p0

    return v1

    :cond_db
    const/4 v2, 0x0

    .line 533
    :goto_dc
    :try_start_dc
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_fd

    .line 534
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_f6
    .catchall {:try_start_dc .. :try_end_f6} :catchall_163

    if-nez v3, :cond_fa

    .line 535
    monitor-exit p0

    return v1

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 539
    :cond_fd
    :try_start_fd
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_109
    .catchall {:try_start_fd .. :try_end_109} :catchall_163

    if-eq v2, v3, :cond_10d

    monitor-exit p0

    return v1

    :cond_10d
    const/4 v2, 0x0

    .line 540
    :goto_10e
    :try_start_10e
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12f

    .line 541
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_128
    .catchall {:try_start_10e .. :try_end_128} :catchall_163

    if-nez v3, :cond_12c

    .line 542
    monitor-exit p0

    return v1

    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10e

    .line 546
    :cond_12f
    :try_start_12f
    iget-object v2, p1, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_13b
    .catchall {:try_start_12f .. :try_end_13b} :catchall_163

    if-eq v2, v3, :cond_13f

    monitor-exit p0

    return v1

    :cond_13f
    const/4 v2, 0x0

    .line 547
    :goto_140
    :try_start_140
    iget-object v3, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_161

    .line 548
    iget-object v3, p1, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Report$UserAction;

    iget-object v4, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Report$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_15a
    .catchall {:try_start_140 .. :try_end_15a} :catchall_163

    if-nez v3, :cond_15e

    .line 549
    monitor-exit p0

    return v1

    :cond_15e
    add-int/lit8 v2, v2, 0x1

    goto :goto_140

    .line 553
    :cond_161
    monitor-exit p0

    return v0

    :catchall_163
    move-exception p1

    monitor-exit p0

    throw p1

    .line 510
    :cond_166
    :goto_166
    monitor-exit p0

    return v1
.end method

.method public getAdDuration()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    return-wide v0
.end method

.method public getAdStartTime()J
    .registers 3

    .line 452
    iget-wide v0, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    return-wide v0
.end method

.method public getAdvertisementID()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->advertisementID:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Report$Status;
    .end annotation

    .line 582
    iget v0, p0, Lcom/vungle/warren/model/Report;->status:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .line 327
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 7

    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 559
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 560
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 561
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 562
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->headerBidding:Z

    if-eqz v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 563
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 564
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 565
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 566
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 567
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->ttDownload:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->ttDownload:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 568
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 569
    iget-wide v1, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 570
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 571
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 572
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 573
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 574
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 575
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 576
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 577
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_b8
    .catchall {:try_start_1 .. :try_end_b8} :catchall_bb

    add-int/2addr v0, v1

    .line 578
    monitor-exit p0

    return v0

    :catchall_bb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCTAClicked()Z
    .registers 2

    .line 318
    iget-boolean v0, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z

    return v0
.end method

.method public declared-synchronized recordAction(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    new-instance v1, Lcom/vungle/warren/model/Report$UserAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/vungle/warren/model/Report$UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object p2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "download"

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lcom/vungle/warren/model/Report;->wasCTAClicked:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 246
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordError(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 255
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public recordProgress(I)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    return-void
.end method

.method public setAdDuration(J)V
    .registers 3

    .line 282
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Report$Status;
        .end annotation
    .end param

    .line 586
    iput p1, p0, Lcom/vungle/warren/model/Report;->status:I

    return-void
.end method

.method public setTtDownload(J)V
    .registers 3

    .line 290
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->ttDownload:J

    return-void
.end method

.method public setVideoLength(J)V
    .registers 3

    .line 273
    iput-wide p1, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    return-void
.end method

.method public declared-synchronized toReportBody()Lcom/google/gson/JsonObject;
    .registers 9

    monitor-enter p0

    .line 371
    :try_start_1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "placement_reference_id"

    .line 373
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ad_token"

    .line 374
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_id"

    .line 375
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "incentivized"

    .line 376
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "header_bidding"

    .line 377
    iget-boolean v2, p0, Lcom/vungle/warren/model/Report;->headerBidding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "adStartTime"

    .line 378
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 383
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "url"

    .line 384
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    const-string v1, "adDuration"

    .line 387
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->adDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "ttDownload"

    .line 388
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->ttDownload:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "campaign"

    .line 389
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adType"

    .line 390
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "templateId"

    .line 391
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "init_timestamp"

    .line 393
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "asset_download_duration"

    .line 394
    iget-wide v2, p0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 396
    iget-object v1, p0, Lcom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    const-string v1, "ad_size"

    .line 397
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->adSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_a0
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 402
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "startTime"

    .line 403
    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->adStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 404
    iget v3, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    if-lez v3, :cond_c4

    const-string v3, "videoViewed"

    .line 405
    iget v4, p0, Lcom/vungle/warren/model/Report;->videoViewed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 407
    :cond_c4
    iget-wide v3, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_d7

    const-string v3, "videoLength"

    .line 408
    iget-wide v4, p0, Lcom/vungle/warren/model/Report;->videoLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 410
    :cond_d7
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 411
    iget-object v4, p0, Lcom/vungle/warren/model/Report;->userActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/warren/model/Report$UserAction;

    .line 412
    invoke-virtual {v5}, Lcom/vungle/warren/model/Report$UserAction;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_e2

    :cond_f6
    const-string v4, "userActions"

    .line 414
    invoke-virtual {v2, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 415
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v2, "plays"

    .line 416
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 419
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 420
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->errors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 421
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_10e

    :cond_11e
    const-string v2, "errors"

    .line 423
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 426
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 427
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->clickedThrough:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 428
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_12e

    :cond_13e
    const-string v2, "clickedThrough"

    .line 430
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 433
    iget-boolean v1, p0, Lcom/vungle/warren/model/Report;->incentivized:Z

    if-eqz v1, :cond_156

    iget-object v1, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_156

    const-string v1, "user"

    .line 434
    iget-object v2, p0, Lcom/vungle/warren/model/Report;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_156
    iget v1, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    if-lez v1, :cond_165

    const-string v1, "ordinal_view"

    .line 439
    iget v2, p0, Lcom/vungle/warren/model/Report;->ordinal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_165
    .catchall {:try_start_1 .. :try_end_165} :catchall_167

    .line 442
    :cond_165
    monitor-exit p0

    return-object v0

    :catchall_167
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
