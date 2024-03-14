.class public final Lcom/google/android/gms/internal/ads/zzacu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzdbf:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbg:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbh:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbi:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbj:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbk:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbl:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbm:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbn:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbo:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbp:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, ""

    const-string v1, "gads:afs:csa:experiment_id"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbf:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:app_index:experiment_id"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbg:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:block_autoclicks_experiment_id"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbh:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:sdk_core_experiment_id"

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbi:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:spam_app_context:experiment_id"

    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbj:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:temporary_experiment_id:1"

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbk:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:temporary_experiment_id:2"

    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbl:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:temporary_experiment_id:3"

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbm:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:temporary_experiment_id:4"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbn:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:temporary_experiment_id:5"

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzdbo:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "gads:corewebview:experiment_id"

    .line 22
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzdbp:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
