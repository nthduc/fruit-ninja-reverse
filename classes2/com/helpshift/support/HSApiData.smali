.class public final Lcom/helpshift/support/HSApiData;
.super Ljava/lang/Object;
.source "HSApiData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Helpshift_ApiData"

.field private static final flatFaqListSyncLock:Ljava/lang/Object;

.field public static observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/HSFaqSyncStatusEvents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private failedApiKeys:Ljava/util/Iterator;

.field faqDAO:Lcom/helpshift/support/storage/FaqDAO;

.field private flatFaqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation
.end field

.field sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

.field public storage:Lcom/helpshift/support/HSStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSApiData;->flatFaqListSyncLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->failedApiKeys:Ljava/util/Iterator;

    .line 68
    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/helpshift/support/HSStorage;

    invoke-direct {v0, p1}, Lcom/helpshift/support/HSStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    .line 72
    invoke-static {}, Lcom/helpshift/support/storage/SectionsDataSource;->getInstance()Lcom/helpshift/support/storage/SectionsDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    .line 73
    invoke-static {}, Lcom/helpshift/support/storage/FaqsDataSource;->getInstance()Lcom/helpshift/support/storage/FaqsDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    return-void
.end method

.method protected static addFaqSyncStatusObserver(Lcom/helpshift/support/HSFaqSyncStatusEvents;)V
    .registers 2

    .line 77
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    .line 81
    :cond_b
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .registers 6

    .line 129
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getFaqDM()Lcom/helpshift/faq/FaqsDM;

    move-result-object v0

    new-instance v1, Lcom/helpshift/support/HSApiData$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/helpshift/support/HSApiData$1;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/faq/FaqsDM;->fetchFaqs(Lcom/helpshift/util/FetchDataFromThread;)V

    return-void
.end method

.method private getQuestionAsync(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Landroid/os/Handler;)V
    .registers 14

    .line 557
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getFaqDM()Lcom/helpshift/faq/FaqsDM;

    move-result-object v0

    new-instance v7, Lcom/helpshift/support/HSApiData$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p3

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/support/HSApiData$5;-><init>(Lcom/helpshift/support/HSApiData;Landroid/os/Handler;ZLandroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v0, v7, p1, p2, p3}, Lcom/helpshift/faq/FaqsDM;->fetchQuestion(Lcom/helpshift/util/FetchDataFromThread;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected static removeFaqSyncStatusObserver(Lcom/helpshift/support/HSFaqSyncStatusEvents;)V
    .registers 2

    .line 85
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method protected static signalFaqsUpdated()V
    .registers 2

    .line 91
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 92
    :goto_5
    sget-object v1, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 93
    sget-object v1, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/HSFaqSyncStatusEvents;

    if-eqz v1, :cond_1a

    .line 95
    invoke-interface {v1}, Lcom/helpshift/support/HSFaqSyncStatusEvents;->faqsUpdated()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method protected static signalSearchIndexesUpdated()V
    .registers 2

    .line 102
    sget-object v0, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 103
    :goto_5
    sget-object v1, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 104
    sget-object v1, Lcom/helpshift/support/HSApiData;->observers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/HSFaqSyncStatusEvents;

    if-eqz v1, :cond_1a

    .line 106
    invoke-interface {v1}, Lcom/helpshift/support/HSFaqSyncStatusEvents;->searchIndexesUpdated()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method private updateFlatList()V
    .registers 5

    .line 113
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 115
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/Section;

    .line 117
    invoke-virtual {v3}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/helpshift/support/HSApiData;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 121
    :cond_24
    sget-object v0, Lcom/helpshift/support/HSApiData;->flatFaqListSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    .line 123
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_30

    throw v1

    return-void
.end method


# virtual methods
.method clearETagsForFaqs()V
    .registers 5

    .line 653
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v0}, Lcom/helpshift/support/storage/FaqDAO;->getAllFaqPublishIds()Ljava/util/List;

    move-result-object v0

    .line 654
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    invoke-virtual {p0, v1}, Lcom/helpshift/support/HSApiData;->getQuestionRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object v2

    invoke-interface {v2}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->storeETag(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/helpshift/model/InfoModelFactory;->getInstance()Lcom/helpshift/model/InfoModelFactory;

    move-result-object v2

    iget-object v2, v2, Lcom/helpshift/model/InfoModelFactory;->sdkInfoModel:Lcom/helpshift/model/SdkInfoModel;

    invoke-virtual {v2, v1}, Lcom/helpshift/model/SdkInfoModel;->clearEtag(Ljava/lang/String;)V

    goto :goto_a

    .line 659
    :cond_31
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "/faqs/"

    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->storeETag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllFaqs(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 350
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    goto :goto_1c

    .line 353
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 354
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->clearSearchTerms()V

    goto :goto_c

    :cond_1c
    :goto_1c
    if-eqz p1, :cond_31

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 362
    :cond_31
    iget-object p1, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    return-object p1
.end method

.method protected getFaqsDataForSection(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v1, p1}, Lcom/helpshift/support/storage/FaqDAO;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p1

    const-string v1, "Helpshift_ApiData"

    const-string v2, "Database exception in getting faqs for section"

    .line 273
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_17
    return-object p1
.end method

.method public getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v1, p1, p2}, Lcom/helpshift/support/storage/FaqDAO;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p1

    const-string p2, "Helpshift_ApiData"

    const-string v1, "Database exception in getting faqs for section"

    .line 262
    invoke-static {p2, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_17
    return-object p1
.end method

.method protected getPopulatedSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v1, p1}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_17

    :catch_f
    move-exception v1

    const-string v2, "Helpshift_ApiData"

    const-string v3, "Database exception in getting sections data "

    .line 245
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :goto_17
    invoke-virtual {p0, v0, p1}, Lcom/helpshift/support/HSApiData;->getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPopulatedSections(Ljava/util/ArrayList;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 230
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 231
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/support/Section;

    invoke-virtual {p0, v2, p2}, Lcom/helpshift/support/HSApiData;->isSectionEmpty(Lcom/helpshift/support/Section;Lcom/helpshift/support/FaqTagFilter;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 232
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method getPublishIdFromSectionId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 542
    invoke-virtual {p0}, Lcom/helpshift/support/HSApiData;->getSections()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 544
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 545
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/Section;

    .line 546
    invoke-virtual {v3}, Lcom/helpshift/support/Section;->getSectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 547
    invoke-virtual {v3}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object v1

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    return-object v1
.end method

.method public getQuestion(Landroid/os/Handler;Landroid/os/Handler;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 595
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 596
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_e
    if-eqz p4, :cond_27

    .line 604
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getPlatform()Lcom/helpshift/common/platform/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getFAQSuggestionsDAO()Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;

    move-result-object v0

    invoke-interface {v0, p5, p6}, Lcom/helpshift/conversation/dao/FAQSuggestionsDAO;->getFAQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/support/Faq;

    if-nez v0, :cond_2d

    .line 606
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v0, p5, p6}, Lcom/helpshift/support/storage/FaqDAO;->getFaq(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object v0

    goto :goto_2d

    .line 610
    :cond_27
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-interface {v0, p5}, Lcom/helpshift/support/storage/FaqDAO;->getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;

    move-result-object v0

    .line 614
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 615
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v0, :cond_3a

    if-eqz p3, :cond_43

    :cond_3a
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    .line 619
    invoke-direct/range {v0 .. v5}, Lcom/helpshift/support/HSApiData;->getQuestionAsync(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Landroid/os/Handler;)V

    :cond_43
    return-void
.end method

.method getQuestionRoute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/faqs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;
    .registers 3

    .line 515
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object p1

    return-object p1
.end method

.method public getSection(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .registers 7

    .line 485
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 486
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 490
    :cond_e
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 492
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 493
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 494
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    :cond_1f
    new-instance v0, Lcom/helpshift/support/HSApiData$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/support/HSApiData$4;-><init>(Lcom/helpshift/support/HSApiData;Ljava/lang/String;Landroid/os/Handler;)V

    .line 507
    invoke-direct {p0, v0, p3, p4}, Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p1

    const-string p2, "Helpshift_ApiData"

    const-string p3, "Database exception in getting section data "

    .line 510
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public getSectionSync(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .registers 5

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 521
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 525
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/support/storage/SectionDAO;->getSection(Ljava/lang/String;)Lcom/helpshift/support/Section;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 527
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 528
    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    invoke-virtual {p2, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30

    .line 532
    :cond_20
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 533
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p1

    const-string p2, "Helpshift_ApiData"

    const-string p3, "Database exception in getting section data "

    .line 537
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method protected getSections()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Section;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v1}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_17

    :catch_f
    move-exception v1

    const-string v2, "Helpshift_ApiData"

    const-string v3, "Database exception in getting sections data "

    .line 223
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-object v0
.end method

.method public getSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V
    .registers 7

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p3}, Lcom/helpshift/support/storage/SectionDAO;->getAllSections(Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    const-string v1, "Helpshift_ApiData"

    const-string v2, "Database exception in getting sections data "

    .line 195
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_22

    .line 204
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 205
    sget v2, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_SUCCESS:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 206
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    .line 210
    :cond_22
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 211
    sget v1, Lcom/helpshift/support/constants/GetSectionsCallBackStatus;->DATABASE_FAILURE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :goto_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/support/HSApiData;->getAndStoreSections(Landroid/os/Handler;Landroid/os/Handler;Lcom/helpshift/support/FaqTagFilter;)V

    return-void
.end method

.method protected isSectionEmpty(Lcom/helpshift/support/Section;Lcom/helpshift/support/FaqTagFilter;)Z
    .registers 3

    .line 252
    invoke-virtual {p1}, Lcom/helpshift/support/Section;->getPublishId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/HSApiData;->getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public loadIndex()V
    .registers 4

    .line 457
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/support/HSApiData$3;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$3;-><init>(Lcom/helpshift/support/HSApiData;)V

    const-string v2, "HS-load-index"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 479
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, p2, v0}, Lcom/helpshift/support/HSApiData;->localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public localFaqSearch(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 288
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    goto :goto_1c

    .line 291
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 292
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->clearSearchTerms()V

    goto :goto_c

    .line 296
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->isCacheSearchIndexNull()Z

    move-result v2

    if-nez v2, :cond_c6

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2}, Lcom/helpshift/support/HSStorage;->getDBFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 301
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->readIndex()Lcom/helpshift/support/model/FaqSearchIndex;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 305
    iget-object v2, v1, Lcom/helpshift/support/model/FaqSearchIndex;->fuzzyIndex:Ljava/util/Map;

    .line 308
    :cond_44
    invoke-static {p1, p2}, Lcom/helpshift/support/HSSearch;->queryDocs(Ljava/lang/String;Lcom/helpshift/support/HSSearch$HS_SEARCH_OPTIONS;)Ljava/util/ArrayList;

    move-result-object p2

    .line 309
    invoke-static {p1, v2}, Lcom/helpshift/support/HSSearch;->getFuzzyMatches(Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    .line 311
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_50
    :goto_50
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "t"

    const-string v3, "f"

    if-eqz v1, :cond_8b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 313
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 314
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_50

    .line 315
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/support/Faq;

    .line 316
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lcom/helpshift/support/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 317
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 321
    :cond_8b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8f
    :goto_8f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 322
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 324
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8f

    .line 325
    iget-object v4, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 326
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Lcom/helpshift/support/Faq;->addSearchTerms(Ljava/util/ArrayList;)V

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_c6
    const/4 p1, 0x0

    .line 332
    :goto_c7
    iget-object p2, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_e9

    .line 333
    iget-object p2, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/support/Faq;

    .line 334
    iget-object v2, p2, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e6

    .line 336
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_e6
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    :cond_e9
    if-eqz p3, :cond_fc

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v1, p3}, Lcom/helpshift/support/storage/FaqDAO;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 345
    :cond_fc
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public markFaqInDB(Ljava/lang/String;Z)V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->faqDAO:Lcom/helpshift/support/storage/FaqDAO;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/helpshift/support/storage/FaqDAO;->setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I

    return-void
.end method

.method protected resetReviewCounter()V
    .registers 7

    .line 418
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v0

    .line 419
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getPeriodicReview()Lcom/helpshift/configuration/response/PeriodicReview;

    move-result-object v1

    .line 420
    iget-object v1, v1, Lcom/helpshift/configuration/response/PeriodicReview;->type:Ljava/lang/String;

    const-string v2, "s"

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2b

    .line 422
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    goto :goto_34

    :cond_2b
    const-string v2, "l"

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x0

    .line 427
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->setReviewCounter(I)V

    .line 428
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, v3}, Lcom/helpshift/support/HSStorage;->setLaunchReviewCounter(I)V

    return-void
.end method

.method sendErrorReports(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/logger/model/LogModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 626
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3c

    .line 629
    :cond_9
    invoke-static {}, Lcom/helpshift/providers/CrossModuleDataProvider;->getCampaignModuleAPIs()Lcom/helpshift/providers/ICampaignsModuleAPIs;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 630
    invoke-interface {v0}, Lcom/helpshift/providers/ICampaignsModuleAPIs;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, ""

    :goto_16
    move-object v8, v0

    .line 631
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getErrorReportsDM()Lcom/helpshift/logger/ErrorReportsDM;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/HSApiData$6;

    invoke-direct {v2, p0}, Lcom/helpshift/support/HSApiData$6;-><init>(Lcom/helpshift/support/HSApiData;)V

    .line 644
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v4

    const-string v5, "3"

    const-string v6, "7.9.1"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object v3, p1

    .line 631
    invoke-virtual/range {v1 .. v9}, Lcom/helpshift/logger/ErrorReportsDM;->sendErrorReport(Lcom/helpshift/util/FetchDataFromThread;Ljava/util/List;Lcom/helpshift/account/domainmodel/UserDM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method protected shouldShowReviewPopup()Z
    .registers 8

    .line 369
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    const-string v1, "app_reviewed"

    .line 370
    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return v2

    :cond_12
    const-string v1, "reviewUrl"

    .line 374
    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    .line 379
    :cond_1f
    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getPeriodicReview()Lcom/helpshift/configuration/response/PeriodicReview;

    move-result-object v0

    .line 380
    iget-boolean v1, v0, Lcom/helpshift/configuration/response/PeriodicReview;->isEnabled:Z

    if-eqz v1, :cond_5f

    iget v1, v0, Lcom/helpshift/configuration/response/PeriodicReview;->interval:I

    if-gtz v1, :cond_2c

    goto :goto_5f

    .line 384
    :cond_2c
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v1

    .line 385
    iget-object v3, v0, Lcom/helpshift/configuration/response/PeriodicReview;->type:Ljava/lang/String;

    .line 386
    iget v0, v0, Lcom/helpshift/configuration/response/PeriodicReview;->interval:I

    const-string v4, "l"

    .line 387
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    if-ge v1, v0, :cond_5d

    :cond_40
    const-string v4, "s"

    .line 388
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz v1, :cond_5f

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    int-to-long v5, v1

    sub-long/2addr v3, v5

    int-to-long v0, v0

    cmp-long v5, v3, v0

    if-ltz v5, :cond_5f

    :cond_5d
    const/4 v0, 0x1

    return v0

    :cond_5f
    :goto_5f
    return v2
.end method

.method startSearchIndexing()V
    .registers 4

    .line 179
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/support/HSApiData$2;

    invoke-direct {v1, p0}, Lcom/helpshift/support/HSApiData$2;-><init>(Lcom/helpshift/support/HSApiData;)V

    const-string v2, "HS-search-index"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public storeFile(Ljava/lang/String;)V
    .registers 4

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getStoredFiles()Lorg/json/JSONArray;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 435
    iget-object p1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {p1, v0}, Lcom/helpshift/support/HSStorage;->setStoredFiles(Lorg/json/JSONArray;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p1

    const-string v0, "Helpshift_ApiData"

    const-string v1, "storeFile"

    .line 438
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method storeSections(Lorg/json/JSONArray;)V
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FAQ sections in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ApiData"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0}, Lcom/helpshift/support/storage/SectionDAO;->clearSectionsData()V

    .line 175
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->sectionDAO:Lcom/helpshift/support/storage/SectionDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/support/storage/SectionDAO;->storeSections(Lorg/json/JSONArray;)V

    return-void
.end method

.method updateIndex()V
    .registers 4

    const-string v0, "Helpshift_ApiData"

    const-string v1, "Updating search indexes."

    .line 443
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->deleteIndex()V

    .line 445
    invoke-direct {p0}, Lcom/helpshift/support/HSApiData;->updateFlatList()V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->flatFaqList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/helpshift/support/HSSearch;->indexDocuments(Ljava/util/ArrayList;)Lcom/helpshift/support/model/FaqSearchIndex;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 449
    iget-object v2, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v2, v1}, Lcom/helpshift/support/HSStorage;->storeIndex(Lcom/helpshift/support/model/FaqSearchIndex;)V

    .line 452
    :cond_21
    invoke-static {}, Lcom/helpshift/support/HSApiData;->signalSearchIndexesUpdated()V

    const-string v1, "Search index update finished."

    .line 453
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateReviewCounter()V
    .registers 6

    .line 396
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getReviewCounter()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1}, Lcom/helpshift/support/HSStorage;->getLaunchReviewCounter()I

    move-result v1

    if-nez v0, :cond_1c

    .line 401
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    goto :goto_1e

    :cond_1c
    move v2, v0

    move v0, v1

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    .line 405
    iget-object v1, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/HSStorage;->setLaunchReviewCounter(I)V

    .line 407
    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getCoreApi()Lcom/helpshift/CoreApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpshift/CoreApi;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getPeriodicReview()Lcom/helpshift/configuration/response/PeriodicReview;

    move-result-object v0

    .line 408
    iget-object v0, v0, Lcom/helpshift/configuration/response/PeriodicReview;->type:Ljava/lang/String;

    const-string v1, "l"

    .line 409
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 410
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0}, Lcom/helpshift/support/HSStorage;->getLaunchReviewCounter()I

    move-result v2

    .line 412
    :cond_41
    iget-object v0, p0, Lcom/helpshift/support/HSApiData;->storage:Lcom/helpshift/support/HSStorage;

    invoke-virtual {v0, v2}, Lcom/helpshift/support/HSStorage;->setReviewCounter(I)V

    return-void
.end method
