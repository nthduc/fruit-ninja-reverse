.class final enum Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType$1;
.super Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;
.source "com.google.firebase:firebase-crashlytics@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$JavaType;ILcom/google/firebase/crashlytics/internal/proto/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method public isPackable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
