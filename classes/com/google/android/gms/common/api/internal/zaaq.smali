.class final Lcom/google/android/gms/common/api/internal/zaaq;
.super Lcom/google/android/gms/common/api/internal/zabf;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zagu:Lcom/google/android/gms/common/api/internal/zaai;

.field private final synthetic zagv:Lcom/google/android/gms/signin/internal/zam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/signin/internal/zam;)V
    .registers 5

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zagu:Lcom/google/android/gms/common/api/internal/zaai;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zagv:Lcom/google/android/gms/signin/internal/zam;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void
.end method


# virtual methods
.method public final zaak()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zagu:Lcom/google/android/gms/common/api/internal/zaai;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zagv:Lcom/google/android/gms/signin/internal/zam;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaai;->zaa(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/signin/internal/zam;)V

    return-void
.end method
