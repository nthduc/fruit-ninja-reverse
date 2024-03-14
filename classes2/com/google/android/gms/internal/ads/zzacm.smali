.class public final Lcom/google/android/gms/internal/ads/zzacm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static zzdad:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdae:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdaf:Lcom/google/android/gms/internal/ads/zzaci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdag:Lcom/google/android/gms/internal/ads/zzaci;
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

    const-string v0, "gads:afs:csa_send_tcf_data"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzdad:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:afs:csa_tcf_data_to_collect"

    const-string v1, "[{\"bk\":\"tcString\",\"sk\":\"IABTCF_TCString\",\"type\":0},{\"bk\":\"gdprApplies\",\"sk\":\"IABTCF_gdprApplies\",\"type\":1},{\"bk\":\"usPrivacy\",\"sk\":\"IABUSPrivacy_String\",\"type\":0}]"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzdae:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:afs:csa_webview_custom_domain_param_key"

    const-string v1, "csa_customDomain"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzdaf:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v0, "gads:afs:csa_webview_static_file_path"

    const-string v1, "/afs/ads/i/webview.html"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzdag:Lcom/google/android/gms/internal/ads/zzaci;

    return-void
.end method
