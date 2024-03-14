.class public final Lcom/google/android/gms/internal/ads/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final result:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzbs:Lcom/google/android/gms/internal/ads/zzn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzbt:Lcom/google/android/gms/internal/ads/zzao;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzbu:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzao;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbu:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->result:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbt:Lcom/google/android/gms/internal/ads/zzao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzn;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbu:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaj;->result:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbs:Lcom/google/android/gms/internal/ads/zzn;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbt:Lcom/google/android/gms/internal/ads/zzao;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaj;
    .registers 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzn;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaj;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzaj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzao;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaj<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaj;-><init>(Lcom/google/android/gms/internal/ads/zzao;)V

    return-object v0
.end method


# virtual methods
.method public final isSuccess()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaj;->zzbt:Lcom/google/android/gms/internal/ads/zzao;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
