.class public Lcom/applovin/impl/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/net/Uri;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/impl/a/j;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/a/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/impl/a/j;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/a/c;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/a/j;->b:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)I
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, ":"

    invoke-static {p0, v1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_60

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3c} :catch_41

    add-long/2addr v4, p0

    int-to-long p0, v1

    add-long/2addr v4, p0

    long-to-int p0, v4

    return p0

    :catch_41
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse duration from \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VastVideoCreative"

    invoke-virtual {p1, v1, p0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return v0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/j;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/j;
    .registers 7

    if-eqz p0, :cond_98

    if-eqz p2, :cond_90

    if-eqz p3, :cond_88

    if-eqz p1, :cond_9

    goto :goto_e

    :cond_9
    :try_start_9
    new-instance p1, Lcom/applovin/impl/a/j;

    invoke-direct {p1, p2}, Lcom/applovin/impl/a/j;-><init>(Lcom/applovin/impl/a/c;)V

    :goto_e
    iget v0, p1, Lcom/applovin/impl/a/j;->c:I

    if-nez v0, :cond_26

    const-string v0, "Duration"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/applovin/impl/a/j;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)I

    move-result v0

    if-lez v0, :cond_26

    iput v0, p1, Lcom/applovin/impl/a/j;->c:I

    :cond_26
    const-string v0, "MediaFiles"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-static {v0, p3}, Lcom/applovin/impl/a/j;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_45

    iget-object v1, p1, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    if-eqz v1, :cond_43

    iget-object v1, p1, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_43
    iput-object v0, p1, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    :cond_45
    const-string v0, "VideoClicks"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v1, p1, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    if-nez v1, :cond_69

    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    :cond_69
    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    invoke-static {v0, v1, p2, p3}, Lcom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V

    :cond_74
    iget-object v0, p1, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    invoke-static {p0, v0, p2, p3}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/util/Map;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_79} :catch_7a

    return-object p1

    :catch_7a
    move-exception p0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string p2, "VastVideoCreative"

    const-string p3, "Error occurred while initializing"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No context specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/j;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/utils/t;",
            "Lcom/applovin/impl/sdk/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/a/k;",
            ">;"
        }
    .end annotation

    const-string v0, "VastVideoCreative"

    const-string v1, "MediaFile"

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->ev:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->eu:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/sdk/utils/t;

    invoke-static {v4, p1}, Lcom/applovin/impl/a/k;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/k;

    move-result-object v4

    if-nez v4, :cond_40

    goto :goto_2d

    :cond_40
    :try_start_40
    invoke-virtual {v4}, Lcom/applovin/impl/a/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    :goto_50
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_54
    sget-object v5, Lcom/applovin/impl/sdk/b/b;->ew:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {v4}, Lcom/applovin/impl/a/k;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    goto :goto_50

    :cond_7b
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Video file not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_93} :catch_94

    goto :goto_2d

    :catch_94
    move-exception v5

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to validate video file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4, v5}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    :cond_af
    return-object v1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/a/j$a;)Lcom/applovin/impl/a/k;
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_85

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/a/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/a/k;

    invoke-virtual {v4}, Lcom/applovin/impl/a/k;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    iget-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    :goto_59
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->c()Z

    move-result v1

    if-eqz v1, :cond_67

    new-instance v1, Lcom/applovin/impl/a/j$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/a/j$1;-><init>(Lcom/applovin/impl/a/j;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_67
    sget-object v1, Lcom/applovin/impl/a/j$a;->b:Lcom/applovin/impl/a/j$a;

    if-ne p1, v1, :cond_73

    const/4 p1, 0x0

    :goto_6c
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/a/k;

    return-object p1

    :cond_73
    sget-object v1, Lcom/applovin/impl/a/j$a;->c:Lcom/applovin/impl/a/j$a;

    if-ne p1, v1, :cond_7e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_6c

    :cond_7e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_6c

    :cond_85
    :goto_85
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/a/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/a/j;->c:I

    return v0
.end method

.method public c()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/a/j;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/a/j;

    iget v1, p0, Lcom/applovin/impl/a/j;->c:I

    iget v3, p1, Lcom/applovin/impl/a/j;->c:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    if-eqz v1, :cond_32

    iget-object v3, p1, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_36

    :cond_32
    iget-object v1, p1, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    if-eqz v1, :cond_37

    :goto_36
    return v2

    :cond_37
    iget-object v1, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    if-eqz v1, :cond_44

    iget-object v3, p1, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_48

    :cond_44
    iget-object v1, p1, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    if-eqz v1, :cond_49

    :goto_48
    return v2

    :cond_49
    iget-object v1, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    if-eqz v1, :cond_54

    iget-object p1, p1, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5a

    :cond_54
    iget-object p1, p1, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    if-nez p1, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/a/j;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    if-eqz v2, :cond_34

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_34
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastVideoCreative{videoFiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/j;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destinationUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/j;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/j;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/j;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
