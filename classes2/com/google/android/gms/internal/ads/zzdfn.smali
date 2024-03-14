.class public final Lcom/google/android/gms/internal/ads/zzdfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzdfk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfue:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgjm:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzgjm:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzfue:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zza(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzdfk;
    .registers 3

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdfk;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)V

    return-object v0
.end method

.method public static zzbc(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzdfn;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdfn;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdfn;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzgjm:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfn;->zzfue:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdfn;->zza(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/ads/zzdfk;

    move-result-object v0

    return-object v0
.end method
