.class public final Lcom/google/android/gms/internal/ads/zznp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzbgu:Lcom/google/android/gms/internal/ads/zznp;


# instance fields
.field public final length:I

.field private zzahv:I

.field private final zzbgv:[Lcom/google/android/gms/internal/ads/zznq;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zznq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zznp;-><init>([Lcom/google/android/gms/internal/ads/zznq;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznp;->zzbgu:Lcom/google/android/gms/internal/ads/zznp;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zznq;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznp;->length:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    .line 18
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/zznp;->length:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznp;->length:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zzahv:I

    if-nez v0, :cond_c

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zzahv:I

    .line 13
    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zzahv:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznq;)I
    .registers 4

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zznp;->length:I

    if-ge v0, v1, :cond_f

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final zzbd(I)Lcom/google/android/gms/internal/ads/zznq;
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznp;->zzbgv:[Lcom/google/android/gms/internal/ads/zznq;

    aget-object p1, v0, p1

    return-object p1
.end method
