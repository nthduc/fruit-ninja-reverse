.class final synthetic Lcom/google/android/gms/internal/ads/zzakx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdhp:Lcom/google/android/gms/internal/ads/zzaki;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaki;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdhp:Lcom/google/android/gms/internal/ads/zzaki;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzaki;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakx;-><init>(Lcom/google/android/gms/internal/ads/zzaki;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdhp:Lcom/google/android/gms/internal/ads/zzaki;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaki;->destroy()V

    return-void
.end method
