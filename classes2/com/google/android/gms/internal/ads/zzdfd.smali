.class final synthetic Lcom/google/android/gms/internal/ads/zzdfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdez;


# static fields
.field static final zzgwy:Lcom/google/android/gms/internal/ads/zzdez;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfd;->zzgwy:Lcom/google/android/gms/internal/ads/zzdez;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "native_version"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
