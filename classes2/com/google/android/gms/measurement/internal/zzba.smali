.class final synthetic Lcom/google/android/gms/measurement/internal/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzek;


# static fields
.field static final zza:Lcom/google/android/gms/measurement/internal/zzek;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzba;->zza:Lcom/google/android/gms/measurement/internal/zzek;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzas;->zzca()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
