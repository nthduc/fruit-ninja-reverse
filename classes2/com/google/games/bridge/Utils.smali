.class public final Lcom/google/games/bridge/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .registers 3

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_b

    :catch_4
    const-string p0, "Utils"

    const-string p1, "Activity not found. Please install Play Games App."

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method
