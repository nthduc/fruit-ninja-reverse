.class public Lcom/applovin/impl/mediation/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/mediation/a/g;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/f;->a:Lcom/applovin/impl/mediation/a/g;

    iput-object p4, p0, Lcom/applovin/impl/mediation/a/f;->e:Ljava/lang/String;

    const/4 p4, 0x0

    if-eqz p3, :cond_1e

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/g;->a()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/f;->d:Ljava/lang/String;

    goto :goto_20

    :cond_1e
    iput-object p4, p0, Lcom/applovin/impl/mediation/a/f;->d:Ljava/lang/String;

    :goto_20
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/j;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/f;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/j;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/a/f;->c:Ljava/lang/String;

    goto :goto_33

    :cond_2f
    iput-object p4, p0, Lcom/applovin/impl/mediation/a/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/mediation/a/f;->c:Ljava/lang/String;

    :goto_33
    return-void
.end method

.method public static a(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;)Lcom/applovin/impl/mediation/a/f;
    .registers 5

    if-eqz p0, :cond_13

    if-eqz p1, :cond_b

    new-instance v0, Lcom/applovin/impl/mediation/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/applovin/impl/mediation/a/f;-><init>(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No adapterWrapper specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No spec specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/applovin/impl/mediation/a/g;Ljava/lang/String;)Lcom/applovin/impl/mediation/a/f;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/applovin/impl/mediation/a/f;->b(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;)Lcom/applovin/impl/mediation/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;)Lcom/applovin/impl/mediation/a/f;
    .registers 5

    if-eqz p0, :cond_9

    new-instance v0, Lcom/applovin/impl/mediation/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/applovin/impl/mediation/a/f;-><init>(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/impl/mediation/j;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No spec specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/mediation/a/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/f;->a:Lcom/applovin/impl/mediation/a/g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/a/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalCollectionResult{mSignalProviderSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/f;->a:Lcom/applovin/impl/mediation/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdkVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAdapterVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSignalDataLength=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/a/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/a/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
