.class public final Lcom/google/android/gms/internal/ads/zzblv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzawo;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmq:Lcom/google/android/gms/internal/ads/zzblh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzblh;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblv;->zzfmq:Lcom/google/android/gms/internal/ads/zzblh;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 3

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlp()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawo;

    return-object v0
.end method
