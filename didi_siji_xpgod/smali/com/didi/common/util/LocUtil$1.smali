.class Lcom/didi/common/util/LocUtil$1;
.super Ljava/lang/Object;
.source "LocUtil.java"

# interfaces
.implements Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/util/LocUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/util/LocUtil;


# direct methods
.method constructor <init>(Lcom/didi/common/util/LocUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/common/util/LocUtil$1;->this$0:Lcom/didi/common/util/LocUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "permission_gps_error_cancel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public firstClick()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public secondClick()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public submit()V
    .locals 4

    .prologue
    .line 136
    const-string v2, "permission_gps_error_submit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/didi/common/util/LocUtil$1;->this$0:Lcom/didi/common/util/LocUtil;

    #getter for: Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/common/util/LocUtil;->access$000(Lcom/didi/common/util/LocUtil;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, gpsIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/didi/common/util/LocUtil$1;->this$0:Lcom/didi/common/util/LocUtil;

    #getter for: Lcom/didi/common/util/LocUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/common/util/LocUtil;->access$000(Lcom/didi/common/util/LocUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #gpsIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local v1       #gpsIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public submitOnly()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public thirdClick()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
