.class public Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/ad/NativeAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/sdk/ad/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/applovin/impl/sdk/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->k:F

    return-object p0
.end method

.method public a(J)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 3

    iput-wide p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->u:J

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a:Lcom/applovin/impl/sdk/ad/d;

    return-object p0
.end method

.method public a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->w:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;)",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->q:Ljava/util/List;

    return-object p0
.end method

.method public a()Lcom/applovin/impl/sdk/ad/NativeAdImpl;
    .registers 31

    move-object/from16 v0, p0

    new-instance v27, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    move-object/from16 v1, v27

    iget-object v2, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a:Lcom/applovin/impl/sdk/ad/d;

    iget-object v3, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->j:Ljava/lang/String;

    iget v12, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->k:F

    iget-object v13, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->l:Ljava/lang/String;

    iget-object v14, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->m:Ljava/lang/String;

    iget-object v15, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->n:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->o:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->p:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->q:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->r:Ljava/util/List;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->s:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->t:Ljava/lang/String;

    move-object/from16 v21, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->u:J

    move-wide/from16 v22, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->v:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->w:Lcom/applovin/impl/sdk/j;

    move-object/from16 v25, v1

    const/16 v26, 0x0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct/range {v1 .. v26}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/ad/NativeAdImpl$1;)V

    return-object v27
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;)",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->r:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->v:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->t:Ljava/lang/String;

    return-object p0
.end method
