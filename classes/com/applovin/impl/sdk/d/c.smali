.class abstract Lcom/applovin/impl/sdk/d/c;
.super Lcom/applovin/impl/sdk/d/a;

# interfaces
.implements Lcom/applovin/impl/mediation/k$a;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/ad/g;

.field private c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final d:Lcom/applovin/impl/sdk/o;

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/applovin/impl/sdk/c/e;

.field private g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-eqz p2, :cond_1d

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/c;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/c;->j()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c;->e:Ljava/util/Collection;

    new-instance p1, Lcom/applovin/impl/sdk/c/e;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/c/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image..."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/c;->g(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to cache "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image"

    goto :goto_49

    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image to cache"

    :goto_49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_33

    return-object v1

    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "file://"

    if-eqz v2, :cond_5c

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/c/e;->b(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_49
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v2, v0, p2, p1, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/c/e;)Z

    move-result p1

    if-eqz p1, :cond_85

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_49

    :cond_85
    return-object v1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/c;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/c;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/c;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p1
.end method

.method private g(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/d/c;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private j()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->bA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_23

    aget-char v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_23
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caching video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->I()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_98

    iget-object p3, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_81

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_6f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finish caching video for ad #"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ". Updating ad with cachedVideoFilename = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    return-object p1

    :cond_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create URI from cached video file = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b3

    :cond_81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to cache video = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Video file was missing or null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b3

    :cond_98
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->bD:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b1

    const-string p1, "Failed to cache video"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/c;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->h()V

    goto :goto_b6

    :cond_b1
    const-string p1, "Failed to cache video, but not failing ad load"

    :goto_b3
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/c;->d(Ljava/lang/String;)V

    :cond_b6
    :goto_b6
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_13

    const-string p1, "Nothing to cache, skipping..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    return-object v1

    :cond_13
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->I()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/g;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_38
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    goto :goto_52

    :cond_51
    move-object v2, v1

    :goto_52
    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/util/List;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    if-eqz v2, :cond_77

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p2, v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p2, v3, v4}, Lcom/applovin/impl/sdk/c/e;->a(J)V

    goto :goto_77

    :cond_6d
    iget-object p2, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p2, v3, v4}, Lcom/applovin/impl/sdk/c/e;->b(J)V

    :cond_77
    :goto_77
    :try_start_77
    const-string p2, "UTF-8"

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_77 .. :try_end_7d} :catch_99
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7d} :catch_7e

    return-object p1

    :catch_7e
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String resource at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed to load."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_99
    move-exception p1

    const-string p2, "UTF-8 encoding not supported."

    invoke-virtual {p0, p2, p1}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9f
    return-object v1
.end method

.method a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/g;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/ad/g;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bC:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string p2, "Resource caching is disabled, skipping cache..."

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    return-object p1

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/g;->shouldCancelHtmlCachingIfShown()Z

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2a
    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_2a

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->b()Z

    move-result v3

    if-eqz v3, :cond_45

    return-object p1

    :cond_45
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4d

    goto :goto_2a

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v5, v3

    :goto_52
    iget-object v6, p0, Lcom/applovin/impl/sdk/d/c;->e:Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    if-ge v5, v4, :cond_67

    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_67
    if-le v5, v3, :cond_c0

    if-eq v5, v4, :cond_c0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    if-eqz v1, :cond_8d

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/g;->hasShown()Z

    move-result v6

    if-eqz v6, :cond_8d

    const-string p2, "Cancelling HTML caching due to ad being shown already"

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/c/e;->a()V

    return-object p1

    :cond_8d
    invoke-direct {p0, v2, v4}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_a3

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Lcom/applovin/impl/sdk/ad/g;->b(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/c/e;->e()V

    goto :goto_bd

    :cond_a3
    iget-object v4, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/c/e;->f()V

    goto :goto_bd

    :cond_a9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip caching of non-resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    :goto_bd
    move v4, v5

    goto/16 :goto_38

    :cond_c0
    const-string p2, "Unable to cache resource; ad HTML is invalid."

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->d(Ljava/lang/String;)V

    return-object p1

    :cond_c6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/mediation/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/mediation/k;->b(Lcom/applovin/impl/mediation/k$a;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/mediation/a/a;)V
    .registers 3

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "Updating flag for timeout..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/c;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/d/c;->g:Z

    :cond_18
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/mediation/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/mediation/k;->b(Lcom/applovin/impl/mediation/k$a;)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/AppLovinAdBase;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/c/d;->a(Lcom/applovin/impl/sdk/c/e;Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/net/Uri;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/g;->I()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5b

    iget-object p3, p0, Lcom/applovin/impl/sdk/d/c;->d:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_34

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2e

    return-object p2

    :cond_2e
    const-string p2, "Unable to extract Uri from image file"

    :goto_30
    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/c;->d(Ljava/lang/String;)V

    goto :goto_5b

    :cond_34
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to retrieve File from cached image filename = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_30

    :catch_46
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to cache image at url = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/d/c;->g:Z

    return v0
.end method

.method c()V
    .registers 3

    const-string v0, "Caching mute images..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->aD()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "mute"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/d/c;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/g;->c(Landroid/net/Uri;)V

    :cond_18
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->aE()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "unmute"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/d/c;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/g;->d(Landroid/net/Uri;)V

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad updated with muteImageFilename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->aD()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unmuteImageFilename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->aE()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->H()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method f(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->L()Lcom/applovin/impl/sdk/network/a;

    move-result-object v1

    new-instance v3, Lcom/applovin/impl/sdk/network/a$a;

    invoke-direct {v3}, Lcom/applovin/impl/sdk/network/a$a;-><init>()V

    new-instance v4, Lcom/applovin/impl/sdk/d/c$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/applovin/impl/sdk/d/c$1;-><init>(Lcom/applovin/impl/sdk/d/c;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3, v4}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/network/a$a;Lcom/applovin/impl/sdk/network/a$c;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_51

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->f:Lcom/applovin/impl/sdk/c/e;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/c/e;->a(J)V

    :cond_51
    return-object p1
.end method

.method h()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/sdk/d/c$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/c$2;-><init>(Lcom/applovin/impl/sdk/d/c;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method i()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rendered new ad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/c$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/d/c$3;-><init>(Lcom/applovin/impl/sdk/d/c;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->L()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Subscribing to timeout events..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->B()Lcom/applovin/impl/mediation/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/mediation/k;->a(Lcom/applovin/impl/mediation/k$a;)V

    :cond_16
    return-void
.end method
