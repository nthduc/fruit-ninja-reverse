.class final Lcom/google/android/gms/internal/base/zaj;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field mChangingConfigurations:I

.field zaoc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zaj;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    .line 3
    iget v0, p1, Lcom/google/android/gms/internal/base/zaj;->mChangingConfigurations:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zaj;->mChangingConfigurations:I

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/base/zaj;->zaoc:I

    iput p1, p0, Lcom/google/android/gms/internal/base/zaj;->zaoc:I

    :cond_d
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .registers 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/base/zaj;->mChangingConfigurations:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/base/zaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/zaf;-><init>(Lcom/google/android/gms/internal/base/zaj;)V

    return-object v0
.end method
