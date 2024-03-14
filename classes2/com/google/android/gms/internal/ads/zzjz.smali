.class public final Lcom/google/android/gms/internal/ads/zzjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzaox:Lcom/google/android/gms/internal/ads/zzmk;

.field private static final zzaoy:Ljava/util/regex/Pattern;


# instance fields
.field public zzahp:I

.field public zzahq:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjz;->zzaox:Lcom/google/android/gms/internal/ads/zzmk;

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjz;->zzaoy:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahp:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahq:I

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "iTunSMPB"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 15
    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzjz;->zzaoy:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p2, 0x1

    .line 17
    :try_start_17
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 18
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_2e

    if-lez p1, :cond_33

    .line 20
    :cond_2e
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahp:I

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahq:I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_32} :catch_33

    return p2

    :catch_33
    :cond_33
    return v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzmc;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmc;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzmc;->zzba(I)Lcom/google/android/gms/internal/ads/zzmc$zza;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzmi;

    if-eqz v3, :cond_1e

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzmi;

    .line 9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzmi;->description:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzmi;->text:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzjz;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return v0
.end method

.method public final zzgs()Z
    .registers 3

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzahq:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
