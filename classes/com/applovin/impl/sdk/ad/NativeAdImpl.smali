.class public Lcom/applovin/impl/sdk/ad/NativeAdImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/ad/j;
.implements Lcom/applovin/nativeAds/AppLovinNativeAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;
    }
.end annotation


# static fields
.field public static final QUERY_PARAM_IS_FIRST_PLAY:Ljava/lang/String; = "fp"

.field public static final QUERY_PARAM_VIDEO_PERCENT_VIEWED:Ljava/lang/String; = "pv"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/lang/String;

.field private final r:J

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:F

.field private w:Ljava/lang/String;

.field private x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p1

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    move-object v1, p2

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:F

    move-object v1, p12

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:J

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/ad/NativeAdImpl$1;)V
    .registers 26

    invoke-direct/range {p0 .. p24}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_148

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_148

    :cond_13
    check-cast p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/ad/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_26

    :cond_22
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_27

    :goto_26
    return v1

    :cond_27
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_38

    :cond_34
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_39

    :goto_38
    return v1

    :cond_39
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    if-eqz v2, :cond_46

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto :goto_4a

    :cond_46
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    if-eqz v2, :cond_4b

    :goto_4a
    return v1

    :cond_4b
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_58

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5c

    :cond_58
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_5d

    :goto_5c
    return v1

    :cond_5d
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_6a

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_6e

    :cond_6a
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_6f

    :goto_6e
    return v1

    :cond_6f
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_7c

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_80

    :cond_7c
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_81

    :goto_80
    return v1

    :cond_81
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_8e

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    goto :goto_92

    :cond_8e
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_93

    :goto_92
    return v1

    :cond_93
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    if-eqz v2, :cond_a0

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    goto :goto_a4

    :cond_a0
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    if-eqz v2, :cond_a5

    :goto_a4
    return v1

    :cond_a5
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_b2

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    goto :goto_b6

    :cond_b2
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_b7

    :goto_b6
    return v1

    :cond_b7
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_c4

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    goto :goto_c8

    :cond_c4
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_c9

    :goto_c8
    return v1

    :cond_c9
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_d6

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    goto :goto_da

    :cond_d6
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_db

    :goto_da
    return v1

    :cond_db
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_e8

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ed

    goto :goto_ec

    :cond_e8
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_ed

    :goto_ec
    return v1

    :cond_ed
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_fa

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ff

    goto :goto_fe

    :cond_fa
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_ff

    :goto_fe
    return v1

    :cond_ff
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_10c

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    goto :goto_110

    :cond_10c
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_111

    :goto_110
    return v1

    :cond_111
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    if-eqz v2, :cond_11e

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_123

    goto :goto_122

    :cond_11e
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    if-eqz v2, :cond_123

    :goto_122
    return v1

    :cond_123
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-eqz v2, :cond_130

    iget-object v3, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_135

    goto :goto_134

    :cond_130
    iget-object v2, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-eqz v2, :cond_135

    :goto_134
    return v1

    :cond_135
    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    if-eqz v2, :cond_142

    iget-object p1, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_147

    goto :goto_146

    :cond_142
    iget-object p1, p1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    if-eqz p1, :cond_147

    :goto_146
    return v1

    :cond_147
    return v0

    :cond_148
    :goto_148
    return v1
.end method

.method public getAdId()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->r:J

    return-wide v0
.end method

.method public getAdZone()Lcom/applovin/impl/sdk/ad/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    return-object v0
.end method

.method public getCaptionText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getClCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePrefixes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    return-object v0
.end method

.method public getSourceIconUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceStarRatingImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceVideoUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()F
    .registers 2

    iget v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEndTrackingUrl(IZ)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-nez v0, :cond_b

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    if-ltz p1, :cond_11

    const/16 v0, 0x64

    if-le p1, v0, :cond_1f

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Percent viewed must be an integer between 0 and 100."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v1, "AppLovinNativeAd"

    const-string v2, "Invalid percent viewed supplied."

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pv"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "fp"

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_6
.end method

.method public getVideoStartTrackingUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    const/4 v2, 0x0

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    const/4 v2, 0x0

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    if-eqz v2, :cond_a5

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_a6

    :cond_a5
    const/4 v2, 0x0

    :goto_a6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    if-eqz v2, :cond_b2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_b3

    :cond_b2
    const/4 v2, 0x0

    :goto_b3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    if-eqz v2, :cond_cc

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->hashCode()I

    move-result v2

    goto :goto_cd

    :cond_cc
    const/4 v2, 0x0

    :goto_cd
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    if-eqz v2, :cond_d8

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_d8
    add-int/2addr v0, v1

    return v0
.end method

.method public isImagePrecached()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    if-eqz v0, :cond_25

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public isVideoPrecached()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public launchClickTarget(Landroid/content/Context;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/c/a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/sdk/network/f$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_6

    :cond_39
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/j;)Z

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:F

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinNativeAd{clCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adZone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->b:Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceIconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceStarRatingImageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sourceVideoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", descriptionText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", captionText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", starRating=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->v:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", impressionTrackingUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoStartTrackingUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoEndTrackingUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", impressionPostbacks="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickTrackingPostbacks="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->p:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", resourcePrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackImpression()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->trackImpression(Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public trackImpression(Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v2, "AppLovinNativeAd"

    const-string v3, "Tracking impression..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/c/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v3

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/applovin/impl/sdk/network/f$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object v2

    invoke-virtual {v3, v2, v1, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_1c

    :cond_4f
    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->l:Ljava/lang/String;

    const/16 v1, -0x2be

    invoke-interface {p1, v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_58
    return-void
.end method
