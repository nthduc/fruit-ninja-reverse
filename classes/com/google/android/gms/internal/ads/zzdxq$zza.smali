.class final Lcom/google/android/gms/internal/ads/zzdxq$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# static fields
.field static final zzhrv:Lcom/google/android/gms/internal/ads/zzdxq$zza;

.field static final zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;


# instance fields
.field final cause:Ljava/lang/Throwable;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final wasInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdxq;->zzaxx()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 6
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    .line 7
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrv:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    return-void

    .line 8
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrw:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdxq$zza;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->zzhrv:Lcom/google/android/gms/internal/ads/zzdxq$zza;

    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->wasInterrupted:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxq$zza;->cause:Ljava/lang/Throwable;

    return-void
.end method
