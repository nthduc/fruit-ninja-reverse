.class public Lcom/helpshift/support/storage/FaqsDataSource;
.super Ljava/lang/Object;
.source "FaqsDataSource.java"

# interfaces
.implements Lcom/helpshift/support/storage/FaqDAO;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/storage/FaqsDataSource$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpShiftDebug"


# instance fields
.field private final dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getInstance()Lcom/helpshift/support/db/faq/FaqsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/helpshift/support/storage/FaqsDataSource$1;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/helpshift/support/storage/FaqsDataSource;-><init>()V

    return-void
.end method

.method public static addFaqsUnsafe(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 7

    const/4 v0, 0x0

    .line 40
    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 41
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "faqs"

    const/4 v3, 0x0

    .line 42
    invoke-static {p1, v1}, Lcom/helpshift/support/storage/FaqsDataSource;->faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_15} :catch_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_18
    move-exception p0

    const-string p1, "HelpShiftDebug"

    const-string p2, "addFaqsUnsafe"

    .line 46
    invoke-static {p1, p2, p0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    return-void
.end method

.method private static cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;
    .registers 15

    .line 51
    new-instance v13, Lcom/helpshift/support/Faq;

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v0, "question_id"

    .line 52
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "publish_id"

    .line 53
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "language"

    .line 54
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "section_id"

    .line 55
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "title"

    .line 56
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "body"

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "helpful"

    .line 58
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "rtl"

    .line 59
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_60

    goto :goto_61

    :cond_60
    const/4 v10, 0x0

    :goto_61
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v0, "tags"

    .line 60
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v0, "c_tags"

    .line 64
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 63
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/helpshift/support/Faq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V

    return-object v13
.end method

.method private static faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;
    .registers 4

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "question_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/helpshift/support/Faq;->publish_id:Ljava/lang/String;

    const-string v2, "publish_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/helpshift/support/Faq;->language:Ljava/lang/String;

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/helpshift/support/Faq;->section_publish_id:Ljava/lang/String;

    const-string v2, "section_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/helpshift/support/Faq;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/helpshift/support/Faq;->body:Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v1, p0, Lcom/helpshift/support/Faq;->is_helpful:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "helpful"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object v1, p0, Lcom/helpshift/support/Faq;->is_rtl:Ljava/lang/Boolean;

    const-string v2, "rtl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lorg/json/JSONArray;

    .line 79
    invoke-virtual {p0}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "c_tags"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static faqToContentValues(Ljava/lang/String;Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 86
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "publish_id"

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "language"

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "section_id"

    .line 89
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "title"

    .line 90
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "body"

    .line 91
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "helpful"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "is_rtl"

    .line 93
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "rtl"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p0, "stags"

    .line 95
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_72

    :cond_69
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_72
    const-string v1, "tags"

    .line 94
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "issue_tags"

    .line 98
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_88
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 99
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_91
    const-string p1, "c_tags"

    .line 97
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getANDFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v3

    .line 336
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 337
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 338
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_33
    return-object v0
.end method

.method public static getInstance()Lcom/helpshift/support/storage/FaqsDataSource;
    .registers 1

    .line 104
    sget-object v0, Lcom/helpshift/support/storage/FaqsDataSource$LazyHolder;->INSTANCE:Lcom/helpshift/support/storage/FaqsDataSource;

    return-object v0
.end method

.method private getNOTFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v3

    .line 363
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_30
    return-object v0
.end method

.method private getORFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/Faq;

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getTags()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    invoke-virtual {v1}, Lcom/helpshift/support/Faq;->getCategoryTags()Ljava/util/List;

    move-result-object v3

    .line 350
    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_30
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addFaq(Lcom/helpshift/support/Faq;)V
    .registers 6

    monitor-enter p0

    .line 114
    :try_start_1
    invoke-static {p1}, Lcom/helpshift/support/storage/FaqsDataSource;->faqToContentValues(Lcom/helpshift/support/Faq;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "question_id=?"

    const/4 v2, 0x1

    .line 116
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/helpshift/support/Faq;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_36

    .line 118
    :try_start_11
    iget-object p1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "faqs"

    .line 119
    invoke-static {p1, v3, v1, v2}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v1, "faqs"

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_34

    :cond_26
    const-string v3, "faqs"

    .line 126
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c
    .catchall {:try_start_11 .. :try_end_2b} :catchall_36

    goto :goto_34

    :catch_2c
    move-exception p1

    :try_start_2d
    const-string v0, "HelpShiftDebug"

    const-string v1, "Error in addFaq"

    .line 132
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_36

    .line 134
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearDB()V
    .registers 3

    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v1, v0}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 110
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllFaqPublishIds()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 305
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_56

    const/4 v1, 0x0

    :try_start_7
    const-string v2, "publish_id"

    .line 308
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 309
    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "faqs"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 310
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 312
    :goto_24
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "publish_id"

    .line 313
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3a} :catch_43
    .catchall {:try_start_7 .. :try_end_3a} :catchall_41

    goto :goto_24

    :cond_3b
    if-eqz v1, :cond_4e

    .line 324
    :goto_3d
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_56

    goto :goto_4e

    :catchall_41
    move-exception v0

    goto :goto_50

    :catch_43
    move-exception v2

    :try_start_44
    const-string v3, "HelpShiftDebug"

    const-string v4, "Error in getFaqsDataForSection"

    .line 320
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    if-eqz v1, :cond_4e

    goto :goto_3d

    .line 327
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v0

    :goto_50
    if-eqz v1, :cond_55

    .line 324
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_55
    throw v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized getFaq(Ljava/lang/String;)Lcom/helpshift/support/Faq;
    .registers 12

    monitor-enter p0

    .line 153
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4c

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 154
    monitor-exit p0

    return-object v1

    .line 161
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "faqs"

    const/4 v4, 0x0

    const-string v5, "publish_id = ?"

    const/4 v0, 0x1

    .line 162
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_36
    .catchall {:try_start_a .. :try_end_22} :catchall_34

    .line 166
    :try_start_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 167
    invoke-static {p1}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_32
    .catchall {:try_start_22 .. :try_end_2c} :catchall_44

    :cond_2c
    if-eqz p1, :cond_42

    .line 175
    :goto_2e
    :try_start_2e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_4c

    goto :goto_42

    :catch_32
    move-exception v0

    goto :goto_38

    :catchall_34
    move-exception v0

    goto :goto_46

    :catch_36
    move-exception v0

    move-object p1, v1

    :goto_38
    :try_start_38
    const-string v2, "HelpShiftDebug"

    const-string v3, "Error in getFaq"

    .line 171
    invoke-static {v2, v3, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_44

    if-eqz p1, :cond_42

    goto :goto_2e

    .line 179
    :cond_42
    :goto_42
    monitor-exit p0

    return-object v1

    :catchall_44
    move-exception v0

    move-object v1, p1

    :goto_46
    if-eqz v1, :cond_4b

    .line 175
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getFaq(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/support/Faq;
    .registers 13

    monitor-enter p0

    .line 184
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_56

    if-eqz v0, :cond_f

    goto :goto_54

    .line 192
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "faqs"

    const/4 v4, 0x0

    const-string v5, "publish_id = ? AND language = ?"

    const/4 v0, 0x2

    .line 193
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v6, v0

    const/4 p1, 0x1

    aput-object p2, v6, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_3e
    .catchall {:try_start_f .. :try_end_2a} :catchall_3c

    .line 199
    :try_start_2a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 200
    invoke-static {p1}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_3a
    .catchall {:try_start_2a .. :try_end_34} :catchall_4c

    :cond_34
    if-eqz p1, :cond_4a

    .line 208
    :goto_36
    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_56

    goto :goto_4a

    :catch_3a
    move-exception p2

    goto :goto_40

    :catchall_3c
    move-exception p2

    goto :goto_4e

    :catch_3e
    move-exception p2

    move-object p1, v1

    :goto_40
    :try_start_40
    const-string v0, "HelpShiftDebug"

    const-string v2, "Error in getFaq"

    .line 204
    invoke-static {v0, v2, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    if-eqz p1, :cond_4a

    goto :goto_36

    .line 212
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-object v1

    :catchall_4c
    move-exception p2

    move-object v1, p1

    :goto_4e
    if-eqz v1, :cond_53

    .line 208
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_53
    throw p2
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_56

    .line 185
    :cond_54
    :goto_54
    monitor-exit p0

    return-object v1

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5e

    monitor-exit p0

    return-object p1

    .line 269
    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_5e

    const/4 v1, 0x0

    .line 273
    :try_start_14
    iget-object v2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "faqs"

    const/4 v5, 0x0

    const-string v6, "section_id = ?"

    const/4 v2, 0x1

    .line 274
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 279
    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_43

    .line 280
    invoke-static {v1}, Lcom/helpshift/support/storage/FaqsDataSource;->cursorToFaq(Landroid/database/Cursor;)Lcom/helpshift/support/Faq;

    move-result-object p1

    .line 281
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_42} :catch_4b
    .catchall {:try_start_14 .. :try_end_42} :catchall_49

    goto :goto_32

    :cond_43
    if-eqz v1, :cond_56

    .line 291
    :goto_45
    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5e

    goto :goto_56

    :catchall_49
    move-exception p1

    goto :goto_58

    :catch_4b
    move-exception p1

    :try_start_4c
    const-string v2, "HelpShiftDebug"

    const-string v3, "Error in getFaqsDataForSection"

    .line 287
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    if-eqz v1, :cond_56

    goto :goto_45

    .line 295
    :cond_56
    :goto_56
    monitor-exit p0

    return-object v0

    :goto_58
    if-eqz v1, :cond_5d

    .line 291
    :try_start_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public getFaqsForSection(Ljava/lang/String;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/helpshift/support/storage/FaqsDataSource;->getFaqsDataForSection(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;",
            "Lcom/helpshift/support/FaqTagFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/support/Faq;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p1

    .line 220
    :cond_3
    invoke-virtual {p2}, Lcom/helpshift/support/FaqTagFilter;->getOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3de09eb0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_41

    const/16 v3, 0xde3

    if-eq v2, v3, :cond_37

    const v3, 0x179d7

    if-eq v2, v3, :cond_2d

    const v3, 0x1aad3

    if-eq v2, v3, :cond_23

    goto :goto_4a

    :cond_23
    const-string v2, "not"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x2

    goto :goto_4a

    :cond_2d
    const-string v2, "and"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x0

    goto :goto_4a

    :cond_37
    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x1

    goto :goto_4a

    :cond_41
    const-string v2, "undefined"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v1, 0x3

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_5d

    if-eq v1, v6, :cond_58

    if-eq v1, v5, :cond_53

    if-eq v1, v4, :cond_52

    :cond_52
    return-object p1

    .line 226
    :cond_53
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getNOTFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 224
    :cond_58
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getORFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 222
    :cond_5d
    invoke-direct {p0, p1, p2}, Lcom/helpshift/support/storage/FaqsDataSource;->getANDFilteredFaqs(Ljava/util/List;Lcom/helpshift/support/FaqTagFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized removeFaq(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_23

    :try_start_7
    const-string v0, "publish_id=?"

    const/4 v1, 0x1

    .line 141
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 142
    iget-object p1, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "faqs"

    .line 143
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_25

    goto :goto_23

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string v0, "HelpShiftDebug"

    const-string v1, "Error in removeFaq"

    .line 146
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_25

    .line 149
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsHelpful(Ljava/lang/String;Ljava/lang/Boolean;)I
    .registers 8

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3f

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 243
    monitor-exit p0

    return v1

    .line 246
    :cond_a
    :try_start_a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "helpful"

    .line 247
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_1a

    const/4 p2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p2, -0x1

    :goto_1b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_3f

    .line 250
    :try_start_22
    iget-object p2, p0, Lcom/helpshift/support/storage/FaqsDataSource;->dbHelper:Lcom/helpshift/support/db/faq/FaqsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/support/db/faq/FaqsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "faqs"

    const-string v4, "question_id = ?"

    .line 251
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {p2, v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_35
    .catchall {:try_start_22 .. :try_end_34} :catchall_3f

    goto :goto_3d

    :catch_35
    move-exception p1

    :try_start_36
    const-string p2, "HelpShiftDebug"

    const-string v0, "Error in setIsHelpful"

    .line 257
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3f

    .line 260
    :goto_3d
    monitor-exit p0

    return v1

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
