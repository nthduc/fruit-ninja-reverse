.class final synthetic Lcom/google/android/gms/internal/ads/zzcrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzglv:Lcom/google/android/gms/internal/ads/zzcru;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzglv:Lcom/google/android/gms/internal/ads/zzcru;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcru;)Ljava/util/concurrent/Callable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcrv;-><init>(Lcom/google/android/gms/internal/ads/zzcru;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzglv:Lcom/google/android/gms/internal/ads/zzcru;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method