.class public final Lcom/google/android/gms/internal/measurement/zzjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjg;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "com.google.android.gms.measurement"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcw;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.sdk.attribution.cache"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzjj;->zza:Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v1, "measurement.sdk.attribution.cache.ttl"

    const-wide/32 v2, 0x240c8400

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzb:Lcom/google/android/gms/internal/measurement/zzcq;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zza:Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcq;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()J
    .registers 3

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjj;->zzb:Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcq;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
