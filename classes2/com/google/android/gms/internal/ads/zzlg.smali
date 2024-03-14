.class public final Lcom/google/android/gms/internal/ads/zzlg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;


# static fields
.field private static final zzapj:Lcom/google/android/gms/internal/ads/zzka;

.field private static final zzaxl:I

.field private static final zzaxm:[B


# instance fields
.field private final flags:I

.field private zzaih:J

.field private final zzapq:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzarf:I

.field private zzarg:I

.field private zzarj:Lcom/google/android/gms/internal/ads/zzjx;

.field private final zzaxn:Lcom/google/android/gms/internal/ads/zzln;

.field private final zzaxo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzlh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxr:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxs:Lcom/google/android/gms/internal/ads/zzpo;

.field private final zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaxu:[B

.field private final zzaxv:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzku;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzli;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxx:I

.field private zzaxy:I

.field private zzaxz:J

.field private zzaya:I

.field private zzayb:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzayc:J

.field private zzayd:I

.field private zzaye:J

.field private zzayf:Lcom/google/android/gms/internal/ads/zzlh;

.field private zzayg:I

.field private zzayh:Z

.field private zzayi:Lcom/google/android/gms/internal/ads/zzkg;

.field private zzayj:[Lcom/google/android/gms/internal/ads/zzkg;

.field private zzayk:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 679
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzlf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlg;->zzapj:Lcom/google/android/gms/internal/ads/zzka;

    const-string v0, "seig"

    .line 680
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxl:I

    const/16 v0, 0x10

    .line 681
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxm:[B

    return-void

    nop

    :array_1a
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(ILcom/google/android/gms/internal/ads/zzpo;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpo;)V
    .registers 3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(ILcom/google/android/gms/internal/ads/zzpo;Lcom/google/android/gms/internal/ads/zzln;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzpo;Lcom/google/android/gms/internal/ads/zzln;)V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxs:Lcom/google/android/gms/internal/ads/zzpo;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxn:Lcom/google/android/gms/internal/ads/zzln;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzpf;->zzbjr:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpk;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxr:Lcom/google/android/gms/internal/ads/zzpk;

    .line 16
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxu:[B

    .line 17
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxw:Ljava/util/LinkedList;

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaih:J

    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaye:J

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlg;->zzhb()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpk;ILcom/google/android/gms/internal/ads/zzlp;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 619
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result p1

    .line 621
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkr;->zzar(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_61

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 625
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v1

    .line 626
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzaxc:I

    if-ne v1, v2, :cond_3e

    .line 628
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzbav:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzlp;->zzaw(I)V

    .line 631
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzbax:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 632
    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 633
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaz:Z

    return-void

    .line 627
    :cond_3e
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzlp;->zzaxc:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :cond_61
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjn;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzkt;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzjn;"
        }
    .end annotation

    .line 636
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_b9

    .line 638
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzkt;

    .line 639
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzaum:I

    if-ne v6, v7, :cond_b5

    if-nez v4, :cond_1d

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 642
    :cond_1d
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    .line 645
    new-instance v6, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzpk;-><init>([B)V

    .line 646
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_30

    :goto_2e
    move-object v6, v2

    goto :goto_99

    .line 648
    :cond_30
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 649
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v7

    .line 650
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_40

    goto :goto_2e

    .line 652
    :cond_40
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v7

    .line 653
    sget v8, Lcom/google/android/gms/internal/ads/zzkr;->zzaum:I

    if-eq v7, v8, :cond_49

    goto :goto_2e

    .line 655
    :cond_49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6d

    const/16 v6, 0x25

    .line 657
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported pssh version: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PsshAtomUtil"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 659
    :cond_6d
    new-instance v9, Ljava/util/UUID;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->readLong()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->readLong()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_85

    .line 661
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    .line 662
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 663
    :cond_85
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v7

    .line 664
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v8

    if-eq v7, v8, :cond_90

    goto :goto_2e

    .line 666
    :cond_90
    new-array v8, v7, [B

    .line 667
    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 668
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_99
    if-nez v6, :cond_9d

    move-object v6, v2

    goto :goto_a1

    .line 672
    :cond_9d
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_a1
    if-nez v6, :cond_ab

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 675
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 676
    :cond_ab
    new-instance v7, Lcom/google/android/gms/internal/ads/zzjn$zza;

    const-string v8, "video/mp4"

    invoke-direct {v7, v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzjn$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_b9
    if-nez v4, :cond_bc

    return-object v2

    .line 678
    :cond_bc
    new-instance p0, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private final zzeb(J)V
    .registers 57
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 325
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_701

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzku;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawj:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_701

    .line 326
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzku;

    .line 327
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzatt:I

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-ne v2, v3, :cond_1cc

    const-string v2, "Unexpected moov box."

    .line 329
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(ZLjava/lang/Object;)V

    .line 330
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzlg;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v2

    .line 331
    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzaue:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v3

    .line 332
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 334
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v16, v10

    const/4 v10, 0x0

    :goto_51
    if-ge v10, v12, :cond_be

    .line 336
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzkt;

    .line 337
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzatq:I

    if-ne v13, v14, :cond_98

    .line 338
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 339
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 340
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v13

    .line 341
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v14

    sub-int/2addr v14, v9

    .line 342
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v5

    .line 343
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v8

    .line 344
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v11

    .line 345
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v9, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-direct {v9, v14, v5, v8, v11}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(IIII)V

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 347
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-virtual {v15, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b8

    .line 348
    :cond_98
    iget v5, v11, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkr;->zzauf:I

    if-ne v5, v8, :cond_b8

    .line 349
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 350
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 351
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v8

    .line 352
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v8

    if-nez v8, :cond_b2

    .line 353
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v8

    goto :goto_b6

    :cond_b2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v8

    :goto_b6
    move-wide/from16 v16, v8

    :cond_b8
    :goto_b8
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    const/4 v9, 0x1

    goto :goto_51

    .line 356
    :cond_be
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 357
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_ca
    if-ge v8, v5, :cond_fa

    .line 359
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzku;

    .line 360
    iget v9, v10, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkr;->zzatv:I

    if-ne v9, v11, :cond_f3

    .line 361
    sget v9, Lcom/google/android/gms/internal/ads/zzkr;->zzatu:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v11

    const/4 v9, 0x0

    move-wide/from16 v12, v16

    move-object v14, v2

    move-object v7, v15

    move v15, v9

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzkt;JLcom/google/android/gms/internal/ads/zzjn;Z)Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v9

    if-eqz v9, :cond_f4

    .line 363
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzln;->id:I

    invoke-virtual {v3, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f4

    :cond_f3
    move-object v7, v15

    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    move-object v15, v7

    const/16 v7, 0x8

    goto :goto_ca

    :cond_fa
    move-object v7, v15

    .line 365
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 366
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_19b

    const/4 v2, 0x0

    :goto_108
    if-ge v2, v1, :cond_13c

    .line 368
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzln;

    .line 369
    new-instance v8, Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzln;->type:I

    invoke-interface {v9, v2, v10}, Lcom/google/android/gms/internal/ads/zzjx;->zzc(II)Lcom/google/android/gms/internal/ads/zzkg;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(Lcom/google/android/gms/internal/ads/zzkg;)V

    .line 370
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzln;->id:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzlb;)V

    .line 371
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzln;->id:I

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaih:J

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzln;->zzaih:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaih:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_108

    .line 375
    :cond_13c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_163

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    if-nez v1, :cond_163

    .line 376
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-interface {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzjx;->zzc(II)Lcom/google/android/gms/internal/ads/zzkg;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    .line 377
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    const-wide v2, 0x7fffffffffffffffL

    const-string v5, "application/x-emsg"

    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkg;->zze(Lcom/google/android/gms/internal/ads/zzho;)V

    .line 378
    :cond_163
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_194

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayj:[Lcom/google/android/gms/internal/ads/zzkg;

    if-nez v1, :cond_194

    .line 379
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzjx;->zzc(II)Lcom/google/android/gms/internal/ads/zzkg;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "application/cea-608"

    .line 380
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzkg;->zze(Lcom/google/android/gms/internal/ads/zzho;)V

    const/4 v2, 0x1

    .line 381
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzkg;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayj:[Lcom/google/android/gms/internal/ads/zzkg;

    .line 382
    :cond_194
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzjx;->zzgr()V

    goto/16 :goto_2

    .line 383
    :cond_19b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_1a6

    const/16 v19, 0x1

    goto :goto_1a8

    :cond_1a6
    const/16 v19, 0x0

    :goto_1a8
    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    const/4 v2, 0x0

    :goto_1ac
    if-ge v2, v1, :cond_2

    .line 385
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzln;

    .line 386
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzln;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlh;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzln;->id:I

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzlh;->zza(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzlb;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ac

    .line 389
    :cond_1cc
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzauc:I

    if-ne v2, v3, :cond_6ea

    .line 391
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->flags:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxu:[B

    .line 392
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1df
    if-ge v8, v7, :cond_6bc

    .line 394
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawl:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzku;

    .line 395
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzku;->type:I

    sget v11, Lcom/google/android/gms/internal/ads/zzkr;->zzaud:I

    if-ne v10, v11, :cond_69b

    .line 397
    sget v10, Lcom/google/android/gms/internal/ads/zzkr;->zzatp:I

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v10

    .line 398
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v11, 0x8

    .line 399
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 400
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v11

    .line 401
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzkr;->zzar(I)I

    move-result v11

    .line 402
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v12

    and-int/lit8 v13, v3, 0x10

    if-nez v13, :cond_20d

    goto :goto_20e

    :cond_20d
    const/4 v12, 0x0

    .line 403
    :goto_20e
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzlh;

    if-nez v12, :cond_217

    goto :goto_263

    :cond_217
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_227

    .line 407
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v13

    .line 408
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlp;->zzbal:J

    .line 409
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    .line 410
    :cond_227
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzlh;->zzayn:Lcom/google/android/gms/internal/ads/zzlb;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_234

    .line 412
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    goto :goto_236

    :cond_234
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzlb;->zzaxh:I

    :goto_236
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_23f

    .line 414
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v15

    goto :goto_241

    :cond_23f
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzlb;->duration:I

    :goto_241
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_24c

    .line 416
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v16

    move/from16 v4, v16

    goto :goto_24e

    :cond_24c
    iget v4, v13, Lcom/google/android/gms/internal/ads/zzlb;->size:I

    :goto_24e
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_257

    .line 418
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v10

    goto :goto_259

    :cond_257
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzlb;->flags:I

    .line 419
    :goto_259
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzlb;

    invoke-direct {v13, v14, v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzlp;->zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

    move-object v4, v12

    :goto_263
    if-eqz v4, :cond_69b

    .line 423
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 424
    iget-wide v11, v10, Lcom/google/android/gms/internal/ads/zzlp;->zzbba:J

    .line 425
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzlh;->reset()V

    .line 426
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzato:I

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v13

    if-eqz v13, :cond_299

    and-int/lit8 v13, v3, 0x2

    if-nez v13, :cond_299

    .line 428
    sget v11, Lcom/google/android/gms/internal/ads/zzkr;->zzato:I

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v12, 0x8

    .line 429
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 430
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v12

    .line 431
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_295

    .line 432
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v11

    goto :goto_299

    :cond_295
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v11

    .line 437
    :cond_299
    :goto_299
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    .line 438
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_2a4
    if-ge v15, v14, :cond_2d2

    .line 440
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Lcom/google/android/gms/internal/ads/zzkt;

    move-wide/from16 v23, v11

    .line 441
    iget v11, v7, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v12, Lcom/google/android/gms/internal/ads/zzkr;->zzatr:I

    if-ne v11, v12, :cond_2c9

    .line 442
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v11, 0xc

    .line 443
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 444
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v7

    if-lez v7, :cond_2cb

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2cb

    :cond_2c9
    const/16 v11, 0xc

    :cond_2cb
    :goto_2cb
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v22

    move-wide/from16 v11, v23

    goto :goto_2a4

    :cond_2d2
    move/from16 v22, v7

    move-wide/from16 v23, v11

    const/4 v7, 0x0

    const/16 v11, 0xc

    .line 449
    iput v7, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    .line 450
    iput v7, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    .line 451
    iput v7, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    .line 452
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 453
    iput v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzban:I

    .line 454
    iput v2, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzaxc:I

    .line 455
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    if-eqz v12, :cond_2ee

    iget-object v12, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    array-length v12, v12

    if-ge v12, v6, :cond_2f6

    .line 456
    :cond_2ee
    new-array v12, v6, [J

    iput-object v12, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbao:[J

    .line 457
    new-array v6, v6, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    .line 458
    :cond_2f6
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbaq:[I

    if-eqz v6, :cond_2ff

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbaq:[I

    array-length v6, v6

    if-ge v6, v2, :cond_317

    :cond_2ff
    mul-int/lit8 v2, v2, 0x7d

    .line 459
    div-int/lit8 v2, v2, 0x64

    .line 460
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbaq:[I

    .line 461
    new-array v6, v2, [I

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbar:[I

    .line 462
    new-array v6, v2, [J

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbas:[J

    .line 463
    new-array v6, v2, [Z

    iput-object v6, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbat:[Z

    .line 464
    new-array v2, v2, [Z

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzlp;->zzbav:[Z

    :cond_317
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_31a
    const-wide/16 v25, 0x0

    if-ge v2, v14, :cond_4b9

    .line 468
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lcom/google/android/gms/internal/ads/zzkt;

    .line 469
    iget v15, v11, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v12, Lcom/google/android/gms/internal/ads/zzkr;->zzatr:I

    if-ne v15, v12, :cond_48a

    add-int/lit8 v12, v6, 0x1

    .line 470
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v15, 0x8

    .line 471
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 472
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v15

    .line 473
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzkr;->zzar(I)I

    move-result v15

    move/from16 v28, v12

    .line 474
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    move-object/from16 v29, v13

    .line 475
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    move/from16 v30, v14

    .line 476
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

    .line 477
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v31

    aput v31, v0, v6

    .line 478
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbao:[J

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbal:J

    aput-wide v4, v0, v6

    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_372

    .line 480
    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbao:[J

    aget-wide v4, v0, v6

    move-object/from16 v33, v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v1

    move/from16 v34, v8

    move-object/from16 v35, v9

    int-to-long v8, v1

    add-long/2addr v4, v8

    aput-wide v4, v0, v6

    goto :goto_378

    :cond_372
    move-object/from16 v33, v1

    move/from16 v34, v8

    move-object/from16 v35, v9

    :goto_378
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_37e

    const/4 v0, 0x1

    goto :goto_37f

    :cond_37e
    const/4 v0, 0x0

    .line 482
    :goto_37f
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzlb;->flags:I

    if-eqz v0, :cond_387

    .line 484
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v1

    :cond_387
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_38d

    const/4 v4, 0x1

    goto :goto_38e

    :cond_38d
    const/4 v4, 0x0

    :goto_38e
    and-int/lit16 v5, v15, 0x200

    if-eqz v5, :cond_394

    const/4 v5, 0x1

    goto :goto_395

    :cond_394
    const/4 v5, 0x0

    :goto_395
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_39b

    const/4 v8, 0x1

    goto :goto_39c

    :cond_39b
    const/4 v8, 0x0

    :goto_39c
    and-int/lit16 v9, v15, 0x800

    if-eqz v9, :cond_3a2

    const/4 v9, 0x1

    goto :goto_3a3

    :cond_3a2
    const/4 v9, 0x0

    .line 490
    :goto_3a3
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    if-eqz v15, :cond_3c8

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    array-length v15, v15

    move/from16 v36, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_3ca

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    const/4 v15, 0x0

    aget-wide v37, v1, v15

    cmp-long v1, v37, v25

    if-nez v1, :cond_3ca

    .line 491
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzln;->zzbah:[J

    aget-wide v37, v1, v15

    const-wide/16 v39, 0x3e8

    move v15, v2

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-wide/from16 v41, v1

    invoke-static/range {v37 .. v42}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v25

    goto :goto_3cb

    :cond_3c8
    move/from16 v36, v1

    :cond_3ca
    move v15, v2

    .line 492
    :goto_3cb
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbaq:[I

    .line 493
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbar:[I

    move-object/from16 v37, v10

    .line 494
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbas:[J

    move/from16 v38, v15

    .line 495
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbat:[Z

    move-object/from16 v39, v15

    .line 496
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzln;->type:I

    move-object/from16 v40, v1

    const/4 v1, 0x2

    if-ne v15, v1, :cond_3e6

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_3e6

    const/4 v1, 0x1

    goto :goto_3e7

    :cond_3e6
    const/4 v1, 0x0

    .line 497
    :goto_3e7
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    aget v15, v15, v6

    add-int/2addr v15, v7

    move/from16 v47, v1

    move-object/from16 v27, v2

    .line 498
    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    if-lez v6, :cond_3f8

    move v12, v7

    .line 499
    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbba:J

    goto :goto_3fb

    :cond_3f8
    move v12, v7

    move-wide/from16 v6, v23

    :goto_3fb
    if-ge v12, v15, :cond_482

    if-eqz v4, :cond_408

    .line 501
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v41

    move/from16 v48, v3

    move/from16 v3, v41

    goto :goto_40c

    :cond_408
    move/from16 v48, v3

    .line 502
    iget v3, v14, Lcom/google/android/gms/internal/ads/zzlb;->duration:I

    :goto_40c
    if-eqz v5, :cond_417

    .line 503
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v41

    move/from16 v49, v4

    move/from16 v4, v41

    goto :goto_41b

    :cond_417
    move/from16 v49, v4

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzlb;->size:I

    :goto_41b
    if-nez v12, :cond_424

    if-eqz v0, :cond_424

    move/from16 v50, v0

    move/from16 v0, v36

    goto :goto_433

    :cond_424
    if-eqz v8, :cond_42f

    .line 505
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v41

    move/from16 v50, v0

    move/from16 v0, v41

    goto :goto_433

    :cond_42f
    move/from16 v50, v0

    iget v0, v14, Lcom/google/android/gms/internal/ads/zzlb;->flags:I

    :goto_433
    if-eqz v9, :cond_447

    move/from16 v51, v5

    .line 507
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    move/from16 v52, v8

    move/from16 v53, v9

    int-to-long v8, v5

    .line 508
    div-long/2addr v8, v1

    long-to-int v5, v8

    aput v5, v27, v12

    goto :goto_450

    :cond_447
    move/from16 v51, v5

    move/from16 v52, v8

    move/from16 v53, v9

    const/4 v5, 0x0

    .line 510
    aput v5, v27, v12

    :goto_450
    const-wide/16 v43, 0x3e8

    move-wide/from16 v41, v6

    move-wide/from16 v45, v1

    .line 512
    invoke-static/range {v41 .. v46}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v25

    aput-wide v8, v10, v12

    .line 513
    aput v4, v40, v12

    const/16 v4, 0x10

    shr-int/2addr v0, v4

    const/4 v4, 0x1

    and-int/2addr v0, v4

    if-nez v0, :cond_46d

    if-eqz v47, :cond_46b

    if-nez v12, :cond_46d

    :cond_46b
    const/4 v0, 0x1

    goto :goto_46e

    :cond_46d
    const/4 v0, 0x0

    .line 514
    :goto_46e
    aput-boolean v0, v39, v12

    int-to-long v3, v3

    add-long/2addr v6, v3

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v48

    move/from16 v4, v49

    move/from16 v0, v50

    move/from16 v5, v51

    move/from16 v8, v52

    move/from16 v9, v53

    goto/16 :goto_3fb

    :cond_482
    move/from16 v48, v3

    .line 517
    iput-wide v6, v13, Lcom/google/android/gms/internal/ads/zzlp;->zzbba:J

    move v7, v15

    move/from16 v6, v28

    goto :goto_49f

    :cond_48a
    move-object/from16 v33, v1

    move/from16 v38, v2

    move/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move v12, v7

    move/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v37, v10

    move-object/from16 v29, v13

    move/from16 v30, v14

    :goto_49f
    add-int/lit8 v2, v38, 0x1

    const/16 v11, 0xc

    move-object/from16 v0, p0

    move-object/from16 v13, v29

    move/from16 v14, v30

    move-object/from16 v5, v31

    move-object/from16 v4, v32

    move-object/from16 v1, v33

    move/from16 v8, v34

    move-object/from16 v9, v35

    move-object/from16 v10, v37

    move/from16 v3, v48

    goto/16 :goto_31a

    :cond_4b9
    move-object/from16 v33, v1

    move/from16 v48, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v37, v10

    .line 521
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzauu:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    if-eqz v0, :cond_54e

    move-object/from16 v4, v32

    .line 523
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzln;->zzbaf:[Lcom/google/android/gms/internal/ads/zzlq;

    move-object/from16 v2, v37

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlb;->zzaxh:I

    aget-object v1, v1, v3

    .line 524
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 525
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzlq;->zzbbc:I

    const/16 v3, 0x8

    .line 526
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 527
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 528
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkr;->zzar(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4f5

    .line 530
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 531
    :cond_4f5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v3

    .line 532
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v4

    .line 533
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzaxc:I

    if-ne v4, v5, :cond_52b

    if-nez v3, :cond_518

    .line 537
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbav:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_507
    if-ge v5, v4, :cond_527

    .line 539
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_512

    const/4 v7, 0x1

    goto :goto_513

    :cond_512
    const/4 v7, 0x0

    .line 541
    :goto_513
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_507

    :cond_518
    if-le v3, v1, :cond_51c

    const/4 v0, 0x1

    goto :goto_51d

    :cond_51c
    const/4 v0, 0x0

    :goto_51d
    mul-int v3, v3, v4

    const/4 v1, 0x0

    add-int/lit8 v6, v3, 0x0

    .line 546
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbav:[Z

    invoke-static {v3, v1, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 547
    :cond_527
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzlp;->zzaw(I)V

    goto :goto_550

    .line 534
    :cond_52b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzaxc:I

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length mismatch: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54e
    move-object/from16 v2, v37

    .line 548
    :goto_550
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzauv:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    if-eqz v0, :cond_5a2

    .line 550
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v1, 0x8

    .line 551
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 552
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 553
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzar(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_56e

    .line 555
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 556
    :cond_56e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v1

    if-ne v1, v5, :cond_589

    .line 559
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v1

    .line 560
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    if-nez v1, :cond_581

    .line 561
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v0

    goto :goto_585

    :cond_581
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v0

    :goto_585
    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    goto :goto_5a2

    .line 558
    :cond_589
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_5a2
    :goto_5a2
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzauz:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    if-eqz v0, :cond_5b0

    .line 564
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v1, 0x0

    .line 565
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlg;->zza(Lcom/google/android/gms/internal/ads/zzpk;ILcom/google/android/gms/internal/ads/zzlp;)V

    .line 566
    :cond_5b0
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzauw:I

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    .line 567
    sget v1, Lcom/google/android/gms/internal/ads/zzkr;->zzaux:I

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v1

    if-eqz v0, :cond_655

    if-eqz v1, :cond_655

    .line 569
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v3, 0x8

    .line 570
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 571
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 572
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzlg;->zzaxl:I

    if-ne v4, v5, :cond_655

    .line 573
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5e0

    const/4 v3, 0x4

    .line 574
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 575
    :cond_5e0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_64d

    const/16 v0, 0x8

    .line 577
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 578
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v0

    .line 579
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    sget v5, Lcom/google/android/gms/internal/ads/zzlg;->zzaxl:I

    if-ne v3, v5, :cond_64b

    .line 580
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v0

    if-ne v0, v4, :cond_610

    .line 582
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v3

    cmp-long v0, v3, v25

    if-eqz v0, :cond_608

    const/4 v0, 0x4

    const/4 v3, 0x2

    goto :goto_619

    .line 583
    :cond_608
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_610
    const/4 v3, 0x2

    if-lt v0, v3, :cond_618

    const/4 v0, 0x4

    .line 585
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    goto :goto_619

    :cond_618
    const/4 v0, 0x4

    .line 586
    :goto_619
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_643

    .line 588
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 589
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_657

    .line 590
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v3

    const/16 v5, 0x10

    .line 591
    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 592
    invoke-virtual {v1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 593
    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    .line 594
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlq;

    invoke-direct {v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzlq;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    goto :goto_657

    .line 587
    :cond_643
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64b
    const/4 v0, 0x4

    goto :goto_657

    .line 576
    :cond_64d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_655
    const/4 v0, 0x4

    const/4 v4, 0x1

    .line 595
    :cond_657
    :goto_657
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_65e
    if-ge v3, v1, :cond_695

    .line 597
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzkt;

    .line 598
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzauy:I

    if-ne v6, v7, :cond_689

    .line 599
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v6, 0x8

    .line 600
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    move-object/from16 v7, v31

    const/16 v8, 0x10

    const/4 v10, 0x0

    .line 601
    invoke-virtual {v5, v7, v10, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 602
    sget-object v11, Lcom/google/android/gms/internal/ads/zzlg;->zzaxm:[B

    invoke-static {v7, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_690

    .line 603
    invoke-static {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzlg;->zza(Lcom/google/android/gms/internal/ads/zzpk;ILcom/google/android/gms/internal/ads/zzlp;)V

    goto :goto_690

    :cond_689
    move-object/from16 v7, v31

    const/16 v6, 0x8

    const/16 v8, 0x10

    const/4 v10, 0x0

    :cond_690
    :goto_690
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v31, v7

    goto :goto_65e

    :cond_695
    move-object/from16 v7, v31

    const/16 v6, 0x8

    const/4 v10, 0x0

    goto :goto_6ab

    :cond_69b
    move-object/from16 v33, v1

    move-object/from16 v20, v2

    move/from16 v48, v3

    move/from16 v22, v7

    move/from16 v34, v8

    const/4 v0, 0x4

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v10, 0x0

    move-object v7, v5

    :goto_6ab
    add-int/lit8 v8, v34, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    move-object/from16 v2, v20

    move/from16 v7, v22

    move-object/from16 v1, v33

    move/from16 v3, v48

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_1df

    :cond_6bc
    const/4 v10, 0x0

    .line 606
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzku;->zzawk:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlg;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v0

    if-eqz v0, :cond_6e7

    move-object/from16 v2, p0

    .line 608
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_6cd
    if-ge v10, v1, :cond_6fe

    .line 610
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzlh;

    .line 611
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzho;->zza(Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzkg;->zze(Lcom/google/android/gms/internal/ads/zzho;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6cd

    :cond_6e7
    move-object/from16 v2, p0

    goto :goto_6fe

    :cond_6ea
    move-object v2, v0

    .line 614
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6fe

    .line 615
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzku;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzku;)V

    :cond_6fe
    :goto_6fe
    move-object v0, v2

    goto/16 :goto_2

    :cond_701
    move-object v2, v0

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlg;->zzhb()V

    return-void
.end method

.method private final zzhb()V
    .registers 2

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    .line 323
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkb;)I
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 37
    :cond_4
    :goto_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    const/4 v3, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_466

    const/4 v8, 0x4

    if-eq v2, v6, :cond_300

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_2a4

    if-ne v2, v11, :cond_10e

    .line 188
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    if-nez v2, :cond_86

    .line 189
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    .line 192
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    move-wide v13, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_27
    if-ge v9, v12, :cond_4a

    .line 194
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzlh;

    .line 195
    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzban:I

    if-eq v11, v4, :cond_46

    .line 196
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbao:[J

    iget v11, v15, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    aget-wide v17, v4, v11

    cmp-long v4, v17, v13

    if-gez v4, :cond_46

    move-object v10, v15

    move-wide/from16 v13, v17

    :cond_46
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x3

    goto :goto_27

    :cond_4a
    if-nez v10, :cond_69

    .line 204
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayc:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_61

    .line 207
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlg;->zzhb()V

    const/4 v3, 0x0

    const/16 v18, 0x0

    goto/16 :goto_29b

    .line 206
    :cond_61
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_69
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbao:[J

    iget v4, v10, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    aget-wide v11, v2, v4

    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-int v2, v11

    if-gez v2, :cond_81

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    .line 213
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 215
    :cond_81
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 216
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    .line 217
    :cond_86
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaq:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    aget v2, v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    .line 218
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    if-eqz v2, :cond_f8

    .line 219
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    .line 220
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 221
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    .line 222
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlb;->zzaxh:I

    .line 223
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    if-eqz v11, :cond_ad

    .line 224
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    goto :goto_b3

    .line 225
    :cond_ad
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzln;->zzbaf:[Lcom/google/android/gms/internal/ads/zzlq;

    aget-object v10, v11, v10

    .line 226
    :goto_b3
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzlq;->zzbbc:I

    .line 227
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlp;->zzbav:[Z

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    aget-boolean v4, v4, v11

    .line 228
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxr:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    if-eqz v4, :cond_c4

    const/16 v12, 0x80

    goto :goto_c5

    :cond_c4
    const/4 v12, 0x0

    :goto_c5
    or-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, v11, v7

    .line 229
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxr:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 230
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    .line 231
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxr:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v2, v11, v6}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 232
    invoke-interface {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    if-nez v4, :cond_dd

    add-int/lit8 v10, v10, 0x1

    goto :goto_ee

    .line 235
    :cond_dd
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v4

    const/4 v11, -0x2

    .line 236
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    .line 238
    invoke-interface {v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v4

    .line 240
    :goto_ee
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    .line 241
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    goto :goto_fa

    .line 242
    :cond_f8
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    .line 243
    :goto_fa
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzln;->zzbae:I

    if-ne v2, v6, :cond_10a

    .line 244
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    sub-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    .line 245
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 246
    :cond_10a
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    .line 247
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    .line 248
    :cond_10e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 249
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzaym:Lcom/google/android/gms/internal/ads/zzln;

    .line 250
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/zzlh;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    .line 251
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    .line 252
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    const-wide/16 v11, 0x3e8

    if-eqz v10, :cond_1df

    .line 253
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    .line 254
    aput-byte v7, v10, v7

    .line 255
    aput-byte v7, v10, v6

    .line 256
    aput-byte v7, v10, v3

    .line 257
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    add-int/2addr v3, v6

    .line 258
    iget v13, v4, Lcom/google/android/gms/internal/ads/zzln;->zzasr:I

    rsub-int/lit8 v13, v13, 0x4

    .line 259
    :goto_135
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    if-ge v14, v15, :cond_1f1

    .line 260
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    if-nez v14, :cond_180

    .line 261
    invoke-interface {v1, v10, v13, v3}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 262
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 263
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v14

    sub-int/2addr v14, v6

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    .line 264
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 265
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v9, v14, v8}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 266
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxp:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v9, v14, v6}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 267
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayj:[Lcom/google/android/gms/internal/ads/zzkg;

    if-eqz v14, :cond_171

    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzho;->zzahc:Ljava/lang/String;

    aget-byte v15, v10, v8

    .line 268
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Ljava/lang/String;B)Z

    move-result v14

    if-eqz v14, :cond_171

    const/4 v14, 0x1

    goto :goto_172

    :cond_171
    const/4 v14, 0x0

    :goto_172
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayh:Z

    .line 269
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    add-int/lit8 v14, v14, 0x5

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    .line 270
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    add-int/2addr v14, v13

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    goto :goto_135

    .line 271
    :cond_180
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayh:Z

    if-eqz v15, :cond_1cb

    .line 272
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzpk;->reset(I)V

    .line 273
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    invoke-interface {v1, v14, v7, v15}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 274
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    invoke-interface {v9, v14, v15}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 275
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    .line 276
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzpf;->zzb([BI)I

    move-result v8

    .line 277
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzho;->zzahc:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 278
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zzbn(I)V

    .line 279
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlp;->zzax(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxq:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayj:[Lcom/google/android/gms/internal/ads/zzkg;

    invoke-static {v6, v7, v8, v15}, Lcom/google/android/gms/internal/ads/zznr;->zza(JLcom/google/android/gms/internal/ads/zzpk;[Lcom/google/android/gms/internal/ads/zzkg;)V

    goto :goto_1d0

    :cond_1cb
    const/4 v6, 0x0

    .line 281
    invoke-interface {v9, v1, v14, v6}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I

    move-result v14

    .line 282
    :goto_1d0
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    add-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    .line 283
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    sub-int/2addr v6, v14

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarf:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    goto/16 :goto_135

    .line 286
    :cond_1df
    :goto_1df
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    if-ge v3, v6, :cond_1f1

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    .line 287
    invoke-interface {v9, v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I

    move-result v6

    .line 288
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzarg:I

    goto :goto_1df

    .line 290
    :cond_1f1
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzlp;->zzax(I)J

    move-result-wide v6

    mul-long v6, v6, v11

    .line 291
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxs:Lcom/google/android/gms/internal/ads/zzpo;

    if-nez v3, :cond_29e

    .line 293
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    if-eqz v3, :cond_202

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_203

    :cond_202
    const/4 v3, 0x0

    .line 294
    :goto_203
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbat:[Z

    aget-boolean v5, v8, v5

    or-int v12, v3, v5

    .line 297
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbau:Z

    if-eqz v3, :cond_232

    .line 298
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    if-eqz v3, :cond_214

    .line 299
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaw:Lcom/google/android/gms/internal/ads/zzlq;

    goto :goto_21c

    .line 300
    :cond_214
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzln;->zzbaf:[Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaj:Lcom/google/android/gms/internal/ads/zzlb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlb;->zzaxh:I

    aget-object v3, v3, v4

    :goto_21c
    move-object v4, v3

    .line 301
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzays:Lcom/google/android/gms/internal/ads/zzlq;

    if-eq v4, v3, :cond_22c

    .line 302
    new-instance v3, Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzlq;->zzbbd:[B

    const/4 v8, 0x1

    invoke-direct {v3, v8, v5}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(I[B)V

    goto :goto_230

    .line 303
    :cond_22c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayr:Lcom/google/android/gms/internal/ads/zzkf;

    :goto_230
    move-object v15, v3

    goto :goto_234

    :cond_232
    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 304
    :goto_234
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object v15, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayr:Lcom/google/android/gms/internal/ads/zzkf;

    .line 305
    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzays:Lcom/google/android/gms/internal/ads/zzlq;

    .line 306
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayg:I

    const/4 v14, 0x0

    move-wide v10, v6

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzkg;->zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V

    .line 307
    :goto_241
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxw:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_268

    .line 308
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxw:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzli;

    .line 309
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzli;->size:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    .line 310
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzli;->zzayt:J

    add-long v9, v6, v4

    const/4 v11, 0x1

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzli;->size:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzkg;->zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V

    goto :goto_241

    .line 312
    :cond_268
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayo:I

    .line 313
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    .line 314
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbap:[I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    aget v2, v2, v4

    if-ne v3, v2, :cond_295

    .line 315
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayq:I

    .line 316
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzlh;->zzayp:I

    const/4 v2, 0x0

    .line 317
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    goto :goto_296

    :cond_295
    const/4 v3, 0x0

    :goto_296
    const/4 v2, 0x3

    .line 318
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    const/16 v18, 0x1

    :goto_29b
    if-eqz v18, :cond_4

    return v3

    .line 292
    :cond_29e
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    .line 167
    :cond_2a4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2ac
    if-ge v3, v2, :cond_2d1

    .line 169
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 170
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzlp;->zzbaz:Z

    if-eqz v6, :cond_2ce

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    cmp-long v8, v6, v9

    if-gez v8, :cond_2ce

    .line 171
    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    .line 172
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzlh;

    move-wide v9, v4

    move-object v4, v6

    :cond_2ce
    add-int/lit8 v3, v3, 0x1

    goto :goto_2ac

    :cond_2d1
    if-nez v4, :cond_2d8

    const/4 v2, 0x3

    .line 175
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    goto/16 :goto_4

    .line 177
    :cond_2d8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_2f8

    .line 180
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 181
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 182
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbax:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 183
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbay:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 184
    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzlp;->zzbaz:Z

    goto/16 :goto_4

    .line 179
    :cond_2f8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_300
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    long-to-int v2, v6

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    sub-int/2addr v2, v4

    .line 97
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    if-eqz v4, :cond_456

    .line 98
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 99
    new-instance v2, Lcom/google/android/gms/internal/ads/zzkt;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(ILcom/google/android/gms/internal/ads/zzpk;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v6

    .line 100
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_333

    .line 101
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzku;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzku;->zza(Lcom/google/android/gms/internal/ads/zzkt;)V

    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_45b

    .line 102
    :cond_333
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v8, Lcom/google/android/gms/internal/ads/zzkr;->zzats:I

    if-ne v4, v8, :cond_3fb

    .line 103
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 104
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v4

    const/4 v5, 0x4

    .line 107
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v14

    if-nez v4, :cond_359

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v4

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v8

    goto :goto_361

    .line 113
    :cond_359
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v4

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v8

    :goto_361
    add-long/2addr v6, v8

    const-wide/32 v10, 0xf4240

    move-wide v8, v4

    move-wide v12, v14

    .line 115
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v19

    .line 116
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v3

    .line 118
    new-array v12, v3, [I

    .line 119
    new-array v13, v3, [J

    .line 120
    new-array v10, v3, [J

    .line 121
    new-array v11, v3, [J

    move-wide/from16 v21, v4

    move-wide/from16 v8, v19

    const/4 v4, 0x0

    :goto_37f
    if-ge v4, v3, :cond_3d1

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v5

    const/high16 v16, -0x80000000

    and-int v16, v5, v16

    if-nez v16, :cond_3c9

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v23

    const v16, 0x7fffffff

    and-int v5, v5, v16

    .line 130
    aput v5, v12, v4

    .line 131
    aput-wide v6, v13, v4

    .line 132
    aput-wide v8, v11, v4

    add-long v21, v21, v23

    const-wide/32 v23, 0xf4240

    move-wide/from16 v8, v21

    move/from16 p2, v3

    move-object v5, v10

    move-object v3, v11

    move-wide/from16 v10, v23

    move-object v1, v12

    move-object v0, v13

    move-wide v12, v14

    .line 134
    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v8

    .line 135
    aget-wide v10, v3, v4

    sub-long v10, v8, v10

    aput-wide v10, v5, v4

    const/4 v10, 0x4

    .line 136
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 137
    aget v11, v1, v4

    int-to-long v11, v11

    add-long/2addr v6, v11

    add-int/lit8 v4, v4, 0x1

    move-object v13, v0

    move-object v12, v1

    move-object v11, v3

    move-object v10, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    goto :goto_37f

    .line 128
    :cond_3c9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d1
    move-object v5, v10

    move-object v3, v11

    move-object v1, v12

    move-object v0, v13

    .line 139
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v4, v1, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzjt;-><init>([I[J[J[J)V

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 141
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v4, p0

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaye:J

    .line 142
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzke;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayk:Z

    goto :goto_453

    :cond_3fb
    move-object v4, v0

    .line 144
    iget v0, v2, Lcom/google/android/gms/internal/ads/zzkt;->type:I

    sget v1, Lcom/google/android/gms/internal/ads/zzkr;->zzavy:I

    if-ne v0, v1, :cond_453

    .line 145
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 146
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    if-eqz v1, :cond_453

    const/16 v1, 0xc

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjh()Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjh()Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v9

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v2

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v9

    .line 155
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    invoke-interface {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 156
    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaye:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v0, v5

    if-eqz v7, :cond_444

    .line 157
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayi:Lcom/google/android/gms/internal/ads/zzkg;

    add-long v6, v0, v2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzkg;->zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V

    goto :goto_453

    .line 158
    :cond_444
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxw:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzli;

    invoke-direct {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzli;-><init>(JI)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 159
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    add-int/2addr v0, v9

    iput v0, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    :cond_453
    :goto_453
    move-object/from16 v0, p1

    goto :goto_45b

    :cond_456
    move-object v4, v0

    move-object v0, v1

    .line 161
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 162
    :goto_45b
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v1

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzlg;->zzeb(J)V

    :cond_462
    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_4

    :cond_466
    move-object v4, v0

    move-object v0, v1

    .line 39
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    if-nez v1, :cond_492

    .line 40
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BIIZ)Z

    move-result v1

    if-nez v1, :cond_47b

    const/4 v1, 0x0

    goto/16 :goto_5f3

    .line 42
    :cond_47b
    iput v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    .line 43
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 44
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    .line 45
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v1

    iput v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    .line 46
    :cond_492
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    const-wide/16 v6, 0x1

    cmp-long v8, v1, v6

    if-nez v8, :cond_4ae

    .line 48
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 49
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    add-int/2addr v1, v5

    iput v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    .line 50
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    .line 51
    :cond_4ae
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    int-to-long v6, v6

    cmp-long v8, v1, v6

    if-ltz v8, :cond_5ff

    .line 53
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v1

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    int-to-long v6, v6

    sub-long/2addr v1, v6

    .line 54
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzauc:I

    if-ne v6, v7, :cond_4e1

    .line 55
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4cc
    if-ge v7, v6, :cond_4e1

    .line 57
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzlh;->zzayl:Lcom/google/android/gms/internal/ads/zzlp;

    .line 58
    iput-wide v1, v8, Lcom/google/android/gms/internal/ads/zzlp;->zzbak:J

    .line 59
    iput-wide v1, v8, Lcom/google/android/gms/internal/ads/zzlp;->zzbam:J

    .line 60
    iput-wide v1, v8, Lcom/google/android/gms/internal/ads/zzlp;->zzbal:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_4cc

    .line 62
    :cond_4e1
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzasz:I

    if-ne v6, v7, :cond_507

    const/4 v6, 0x0

    .line 63
    iput-object v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayf:Lcom/google/android/gms/internal/ads/zzlh;

    .line 64
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    add-long/2addr v1, v5

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayc:J

    .line 65
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayk:Z

    if-nez v1, :cond_502

    .line 66
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzkd;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaih:J

    invoke-direct {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(J)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayk:Z

    .line 68
    :cond_502
    iput v3, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    :goto_504
    const/4 v1, 0x1

    goto/16 :goto_5f3

    .line 70
    :cond_507
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    .line 71
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatt:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatv:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatw:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatx:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaty:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauc:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaud:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaue:I

    if-eq v1, v2, :cond_530

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauh:I

    if-ne v1, v2, :cond_52e

    goto :goto_530

    :cond_52e
    const/4 v1, 0x0

    goto :goto_531

    :cond_530
    :goto_530
    const/4 v1, 0x1

    :goto_531
    if-eqz v1, :cond_55a

    .line 73
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v1

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    add-long/2addr v1, v5

    const-wide/16 v5, 0x8

    sub-long/2addr v1, v5

    .line 74
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzku;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    invoke-direct {v5, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzku;-><init>(IJ)V

    invoke-virtual {v3, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-nez v3, :cond_556

    .line 76
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzlg;->zzeb(J)V

    goto :goto_504

    .line 77
    :cond_556
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlg;->zzhb()V

    goto :goto_504

    .line 78
    :cond_55a
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxy:I

    .line 79
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauk:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauj:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatu:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzats:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaul:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzato:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatp:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaug:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatq:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatr:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaum:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauu:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauv:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauz:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauy:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauw:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaux:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaui:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauf:I

    if-eq v1, v2, :cond_5af

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavy:I

    if-ne v1, v2, :cond_5ad

    goto :goto_5af

    :cond_5ad
    const/4 v1, 0x0

    goto :goto_5b0

    :cond_5af
    :goto_5af
    const/4 v1, 0x1

    :goto_5b0
    const-wide/32 v2, 0x7fffffff

    if-eqz v1, :cond_5e7

    .line 81
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaya:I

    if-ne v1, v5, :cond_5df

    .line 83
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    cmp-long v1, v6, v2

    if-gtz v1, :cond_5d7

    .line 85
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpk;

    long-to-int v2, v6

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    .line 86
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxt:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    .line 87
    iput v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    goto :goto_5f3

    .line 84
    :cond_5d7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5df
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5e7
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxz:J

    cmp-long v1, v5, v2

    if-gtz v1, :cond_5f7

    const/4 v1, 0x0

    .line 90
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzayb:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v1, 0x1

    .line 91
    iput v1, v4, Lcom/google/android/gms/internal/ads/zzlg;->zzaxx:I

    :goto_5f3
    if-nez v1, :cond_462

    const/4 v0, -0x1

    return v0

    .line 89
    :cond_5f7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_5ff
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjx;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

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

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlo;->zzd(Lcom/google/android/gms/internal/ads/zzjy;)Z

    move-result p1

    return p1
.end method

.method public final zzc(JJ)V
    .registers 5

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p1, :cond_18

    .line 29
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxo:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzlh;->reset()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 31
    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxw:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 32
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzayd:I

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlg;->zzaxv:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlg;->zzhb()V

    return-void
.end method
