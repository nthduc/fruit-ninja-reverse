.class public final Lcom/google/android/gms/internal/ads/zzlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;
.implements Lcom/google/android/gms/internal/ads/zzke;


# static fields
.field private static final zzapj:Lcom/google/android/gms/internal/ads/zzka;

.field private static final zzayu:I


# instance fields
.field private zzaih:J

.field private final zzapq:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapr:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzarf:I

.field private zzarg:I

.field private zzarj:Lcom/google/android/gms/internal/ads/zzjx;

.field private final zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxv:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzku;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxx:I

.field private zzaxy:I

.field private zzaxz:J

.field private zzaya:I

.field private zzayb:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzayv:[Lcom/google/android/gms/internal/ads/zzll;

.field private zzayw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapj:Lcom/google/android/gms/internal/ads/zzka;

    const-string v0, "qt  "

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayu:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbjr:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    return-void
.end method

.method private final zzeb(J)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 169
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_126

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzku;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawj:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_126

    .line 170
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzku;

    .line 171
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkr;->zzatt:I

    if-ne v3, v4, :cond_111

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x0

    .line 177
    new-instance v9, Lcom/google/android/gms/internal/ads/zzjz;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzjz;-><init>()V

    .line 178
    sget v10, Lcom/google/android/gms/internal/ads/zzkr;->zzavs:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v10

    if-eqz v10, :cond_4e

    .line 180
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayw:Z

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkt;Z)Lcom/google/android/gms/internal/ads/zzmc;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 182
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzjz;->zzb(Lcom/google/android/gms/internal/ads/zzmc;)Z

    :cond_4e
    move-wide v11, v6

    move-wide v6, v3

    const/4 v3, 0x0

    .line 183
    :goto_51
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ed

    .line 184
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzku;

    .line 185
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzatv:I

    if-ne v13, v14, :cond_e4

    .line 186
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzatu:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v14

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayw:Z

    move/from16 v18, v13

    move-object v13, v4

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzkt;JLcom/google/android/gms/internal/ads/zzjn;Z)Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v13

    if-eqz v13, :cond_e4

    .line 188
    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzatw:I

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v4

    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzatx:I

    .line 189
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v4

    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzaty:I

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v4

    .line 190
    invoke-static {v13, v4, v9}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v4

    .line 191
    iget v14, v4, Lcom/google/android/gms/internal/ads/zzls;->zzaxc:I

    if-eqz v14, :cond_e4

    .line 192
    new-instance v14, Lcom/google/android/gms/internal/ads/zzll;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzln;->type:I

    .line 193
    invoke-interface {v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzjx;->zzc(II)Lcom/google/android/gms/internal/ads/zzkg;

    move-result-object v2

    invoke-direct {v14, v13, v4, v2}, Lcom/google/android/gms/internal/ads/zzll;-><init>(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzkg;)V

    .line 194
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzls;->zzaxi:I

    add-int/lit8 v2, v2, 0x1e

    .line 195
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzho;->zzv(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v2

    .line 196
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzln;->type:I

    const/4 v10, 0x1

    if-ne v15, v10, :cond_c9

    .line 197
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzjz;->zzgs()Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 198
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzjz;->zzahp:I

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzjz;->zzahq:I

    invoke-virtual {v2, v10, v15}, Lcom/google/android/gms/internal/ads/zzho;->zzb(II)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v2

    :cond_c3
    if-eqz v8, :cond_c9

    .line 200
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzho;->zza(Lcom/google/android/gms/internal/ads/zzmc;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v2

    .line 201
    :cond_c9
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/zzll;->zzbac:Lcom/google/android/gms/internal/ads/zzkg;

    invoke-interface {v10, v2}, Lcom/google/android/gms/internal/ads/zzkg;->zze(Lcom/google/android/gms/internal/ads/zzho;)V

    move-object v10, v8

    move-object v2, v9

    .line 202
    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzln;->zzaih:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 203
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzls;->zzaoo:[J

    const/4 v8, 0x0

    aget-wide v13, v4, v8

    cmp-long v4, v13, v11

    if-gez v4, :cond_e7

    move-wide v11, v13

    goto :goto_e7

    :cond_e4
    move-object v10, v8

    move-object v2, v9

    const/4 v8, 0x0

    :cond_e7
    :goto_e7
    add-int/lit8 v3, v3, 0x1

    move-object v9, v2

    move-object v8, v10

    goto/16 :goto_51

    .line 208
    :cond_ed
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaih:J

    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzll;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzll;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayv:[Lcom/google/android/gms/internal/ads/zzll;

    .line 210
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjx;->zzgr()V

    .line 211
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    .line 212
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    .line 213
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    goto/16 :goto_2

    .line 214
    :cond_111
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 215
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzku;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzku;)V

    goto/16 :goto_2

    .line 217
    :cond_126
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12e

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlj;->zzhb()V

    :cond_12e
    return-void
.end method

.method private final zzhb()V
    .registers 2

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    .line 167
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaih:J

    return-wide v0
.end method

.method public final isSeekable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkb;)I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 27
    :cond_6
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_19a

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_115

    if-ne v3, v10, :cond_10f

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 94
    :goto_1d
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayv:[Lcom/google/android/gms/internal/ads/zzll;

    array-length v15, v14

    if-ge v3, v15, :cond_3b

    .line 95
    aget-object v14, v14, v3

    .line 96
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzll;->zzaxe:I

    .line 97
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzaxc:I

    if-eq v15, v11, :cond_38

    .line 98
    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzaoo:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_38

    move v5, v3

    move-wide v12, v14

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3b
    if-ne v5, v4, :cond_3e

    return v4

    .line 107
    :cond_3e
    aget-object v3, v14, v5

    .line 108
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzll;->zzbac:Lcom/google/android/gms/internal/ads/zzkg;

    .line 109
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaxe:I

    .line 110
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzaoo:[J

    aget-wide v12, v11, v5

    .line 111
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzls;->zzaon:[I

    aget v11, v11, v5

    .line 112
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzln;->zzbae:I

    if-ne v14, v6, :cond_5b

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, -0x8

    .line 115
    :cond_5b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v14

    sub-long v14, v12, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    int-to-long v6, v10

    add-long/2addr v14, v6

    const-wide/16 v6, 0x0

    cmp-long v10, v14, v6

    if-ltz v10, :cond_10b

    cmp-long v6, v14, v8

    if-ltz v6, :cond_71

    goto/16 :goto_10b

    :cond_71
    long-to-int v2, v14

    .line 119
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 120
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    if-eqz v2, :cond_d2

    .line 121
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v6, 0x0

    .line 122
    aput-byte v6, v2, v6

    const/4 v7, 0x1

    .line 123
    aput-byte v6, v2, v7

    const/4 v7, 0x2

    .line 124
    aput-byte v6, v2, v7

    .line 125
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    .line 126
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    .line 127
    :goto_93
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    if-ge v7, v11, :cond_e8

    .line 128
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    if-nez v7, :cond_c2

    .line 129
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {v1, v7, v6, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 130
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 131
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v7

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    .line 132
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 133
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v9, 0x4

    invoke-interface {v4, v7, v9}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 134
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    add-int/2addr v7, v9

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    add-int/2addr v11, v6

    goto :goto_93

    :cond_c2
    const/4 v8, 0x0

    .line 136
    invoke-interface {v4, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I

    move-result v7

    .line 137
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    .line 138
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    goto :goto_93

    .line 141
    :cond_d2
    :goto_d2
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    if-ge v2, v11, :cond_e8

    sub-int v2, v11, v2

    const/4 v6, 0x0

    .line 142
    invoke-interface {v4, v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I

    move-result v2

    .line 143
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    .line 144
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    goto :goto_d2

    :cond_e8
    move/from16 v20, v11

    .line 146
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzbbh:[J

    aget-wide v17, v1, v5

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzaxk:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzkg;->zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V

    .line 147
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaxe:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzll;->zzaxe:I

    const/4 v1, 0x0

    .line 148
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    .line 149
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    return v1

    :cond_10b
    :goto_10b
    const/4 v4, 0x1

    .line 117
    iput-wide v12, v2, Lcom/google/android/gms/internal/ads/zzkb;->position:J

    return v4

    .line 152
    :cond_10f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 63
    :cond_115
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v6

    add-long/2addr v6, v3

    .line 66
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    if-eqz v10, :cond_175

    .line 67
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 68
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    sget v4, Lcom/google/android/gms/internal/ads/zzkr;->zzass:I

    if-ne v3, v4, :cond_158

    .line 69
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    .line 70
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 72
    sget v5, Lcom/google/android/gms/internal/ads/zzlj;->zzayu:I

    if-ne v4, v5, :cond_141

    :goto_13f
    const/4 v3, 0x1

    goto :goto_155

    :cond_141
    const/4 v4, 0x4

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 75
    :cond_145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v4

    if-lez v4, :cond_154

    .line 76
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzlj;->zzayu:I

    if-ne v4, v5, :cond_145

    goto :goto_13f

    :cond_154
    const/4 v3, 0x0

    .line 79
    :goto_155
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayw:Z

    goto :goto_17d

    .line 80
    :cond_158
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17d

    .line 81
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzku;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzkt;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(ILcom/google/android/gms/internal/ads/zzpk;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzkt;)V

    goto :goto_17d

    :cond_175
    cmp-long v5, v3, v8

    if-gez v5, :cond_17f

    long-to-int v4, v3

    .line 83
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    :cond_17d
    :goto_17d
    const/4 v3, 0x0

    goto :goto_187

    .line 84
    :cond_17f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v8

    add-long/2addr v8, v3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzkb;->position:J

    const/4 v3, 0x1

    .line 86
    :goto_187
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzlj;->zzeb(J)V

    if-eqz v3, :cond_194

    .line 87
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_194

    const/16 v23, 0x1

    goto :goto_196

    :cond_194
    const/16 v23, 0x0

    :goto_196
    if-eqz v23, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_19a
    const/4 v3, 0x1

    .line 29
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    if-nez v6, :cond_1c4

    .line 30
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BIIZ)Z

    move-result v6

    if-nez v6, :cond_1ad

    const/4 v3, 0x0

    goto/16 :goto_2ab

    .line 32
    :cond_1ad
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    .line 33
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 34
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    .line 36
    :cond_1c4
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1e0

    .line 38
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {v1, v3, v5, v5}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 39
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    .line 40
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    .line 41
    :cond_1e0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    .line 42
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzatt:I

    if-eq v3, v6, :cond_1fd

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzatv:I

    if-eq v3, v6, :cond_1fd

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzatw:I

    if-eq v3, v6, :cond_1fd

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzatx:I

    if-eq v3, v6, :cond_1fd

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaty:I

    if-eq v3, v6, :cond_1fd

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzauh:I

    if-ne v3, v6, :cond_1fb

    goto :goto_1fd

    :cond_1fb
    const/4 v3, 0x0

    goto :goto_1fe

    :cond_1fd
    :goto_1fd
    const/4 v3, 0x1

    :goto_1fe
    if-eqz v3, :cond_22a

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    add-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 45
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzku;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    invoke-direct {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzku;-><init>(IJ)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    int-to-long v9, v3

    cmp-long v3, v7, v9

    if-nez v3, :cond_224

    .line 47
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzlj;->zzeb(J)V

    goto :goto_227

    .line 48
    :cond_224
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlj;->zzhb()V

    :goto_227
    const/4 v3, 0x1

    goto/16 :goto_2ab

    .line 49
    :cond_22a
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxy:I

    .line 50
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzauj:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzatu:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzauk:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaul:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzave:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavf:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavg:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaui:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavh:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavi:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavj:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavk:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavl:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaug:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzass:I

    if-eq v3, v6, :cond_26f

    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavs:I

    if-ne v3, v6, :cond_26d

    goto :goto_26f

    :cond_26d
    const/4 v3, 0x0

    goto :goto_270

    :cond_26f
    :goto_26f
    const/4 v3, 0x1

    :goto_270
    if-eqz v3, :cond_2a5

    .line 52
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    if-ne v3, v5, :cond_278

    const/4 v3, 0x1

    goto :goto_279

    :cond_278
    const/4 v3, 0x0

    :goto_279
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 53
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_287

    const/4 v3, 0x1

    goto :goto_288

    :cond_287
    const/4 v3, 0x0

    :goto_288
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 54
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpk;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxz:J

    long-to-int v7, v6

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    .line 55
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 56
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    goto :goto_2ab

    :cond_2a5
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 57
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    .line 58
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxx:I

    :goto_2ab
    if-nez v3, :cond_6

    return v4
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjx;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlo;->zze(Lcom/google/android/gms/internal/ads/zzjy;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .registers 10

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzaya:I

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzarg:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzarf:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlj;->zzhb()V

    return-void

    .line 16
    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzayv:[Lcom/google/android/gms/internal/ads/zzll;

    if-eqz p1, :cond_31

    .line 18
    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_31

    aget-object v1, p1, v0

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    .line 20
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzls;->zzec(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    .line 22
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzls;->zzed(J)I

    move-result v3

    .line 23
    :cond_2c
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzll;->zzaxe:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method

.method public final zzdz(J)J
    .registers 11

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlj;->zzayv:[Lcom/google/android/gms/internal/ads/zzll;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_26

    aget-object v5, v0, v4

    .line 157
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzll;->zzbab:Lcom/google/android/gms/internal/ads/zzls;

    .line 158
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzls;->zzec(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    .line 160
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzls;->zzed(J)I

    move-result v6

    .line 161
    :cond_1a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzls;->zzaoo:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_23

    move-wide v2, v6

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_26
    return-wide v2
.end method
