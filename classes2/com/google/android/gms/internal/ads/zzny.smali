.class public final Lcom/google/android/gms/internal/ads/zzny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final viewportHeight:I

.field public final viewportWidth:I

.field public final zzbhc:Ljava/lang/String;

.field public final zzbhd:Ljava/lang/String;

.field public final zzbhe:Z

.field public final zzbhf:Z

.field public final zzbhg:I

.field public final zzbhh:I

.field public final zzbhi:I

.field public final zzbhj:Z

.field public final zzbhk:Z

.field public final zzbhl:Z


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zzny;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .registers 13

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhc:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhd:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhe:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Z

    const p2, 0x7fffffff

    .line 8
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:I

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhh:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhi:I

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhj:Z

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhk:Z

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportWidth:I

    .line 14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportHeight:I

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhl:Z

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

    if-eqz p1, :cond_58

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_58

    .line 21
    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzny;

    .line 22
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Z

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:I

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhh:I

    if-ne v2, v3, :cond_58

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhj:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhj:Z

    if-ne v2, v3, :cond_58

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhk:Z

    if-ne v2, v3, :cond_58

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhl:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhl:Z

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportWidth:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzny;->viewportWidth:I

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportHeight:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzny;->viewportHeight:I

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhi:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzny;->zzbhi:I

    if-ne v2, p1, :cond_58

    const/4 p1, 0x0

    .line 23
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 24
    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_58

    return v0

    :cond_58
    :goto_58
    return v1
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhf:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhg:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhh:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhi:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhj:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhk:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzbhl:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzny;->viewportHeight:I

    add-int/2addr v1, v0

    return v1
.end method
