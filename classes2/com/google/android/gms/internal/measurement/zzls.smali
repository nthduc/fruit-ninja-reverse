.class public final Lcom/google/android/gms/internal/measurement/zzls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzcq;
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
    .registers 6

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcw;

    const-string v1, "com.google.android.gms.measurement"

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcw;-><init>(Landroid/net/Uri;)V

    const-wide/16 v1, 0x0

    const-string v3, "measurement.id.lifecycle.app_in_background_parameter"

    .line 7
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzls;->zza:Lcom/google/android/gms/internal/measurement/zzcq;

    const/4 v3, 0x0

    const-string v4, "measurement.lifecycle.app_backgrounded_engagement"

    .line 8
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzls;->zzb:Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v4, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzls;->zzc:Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v4, "measurement.lifecycle.app_in_background_parameter"

    .line 10
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzls;->zzd:Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v3, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcw;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zze:Lcom/google/android/gms/internal/measurement/zzcq;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zzb:Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcq;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zzc:Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcq;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzls;->zzd:Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcq;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
