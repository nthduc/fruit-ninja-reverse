.class final synthetic Lcom/google/android/gms/internal/ads/zzddb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzgwa:Lcom/google/android/gms/internal/ads/zzdcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdcz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddb;->zzgwa:Lcom/google/android/gms/internal/ads/zzdcz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcw;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcw;-><init>(ZZZ)V

    return-object v0
.end method
