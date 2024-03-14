.class final synthetic Lcom/google/android/gms/internal/ads/zzcfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# static fields
.field static final zzdfl:Lcom/google/android/gms/internal/ads/zzahq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcfy;->zzdfl:Lcom/google/android/gms/internal/ads/zzahq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    const-string p2, "Show native ad policy validator overlay."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
