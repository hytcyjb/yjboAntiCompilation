.class final Lcom/tencent/bugly/proguard/m$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p2, p0, Lcom/tencent/bugly/proguard/m$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a()Lcom/tencent/bugly/crashreport/common/strategy/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/m$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/c;->a(Ljava/lang/String;)V

    .line 261
    return-void
.end method
