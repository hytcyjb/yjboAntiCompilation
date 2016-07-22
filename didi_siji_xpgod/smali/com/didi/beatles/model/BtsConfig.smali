.class public Lcom/didi/beatles/model/BtsConfig;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;,
        Lcom/didi/beatles/model/BtsConfig$BtsButton;,
        Lcom/didi/beatles/model/BtsConfig$DriverTask;,
        Lcom/didi/beatles/model/BtsConfig$Didialift;,
        Lcom/didi/beatles/model/BtsConfig$Button;,
        Lcom/didi/beatles/model/BtsConfig$AdConfig;,
        Lcom/didi/beatles/model/BtsConfig$Page;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/didi/beatles/model/BtsConfig;


# instance fields
.field public ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

.field public ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

.field public bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

.field public cancelStr:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public cityid:Ljava/lang/String;

.field public didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

.field public driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

.field public hometime:Ljava/lang/String;

.field public isOpenFree:Z

.field public open:Z

.field public switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

.field public terminateStr:Ljava/lang/String;

.field public worktime:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->cityid:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->city:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 33
    const-string v0, "09:00"

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->worktime:Ljava/lang/String;

    .line 35
    const-string v0, "18:00"

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->hometime:Ljava/lang/String;

    .line 36
    const-string v0, "\u8f66\u4e3b\u5df2\u4e3a\u672c\u6b21\u51fa\u884c\u505a\u597d\u51c6\u5907\uff0c\u8bf7\u4e0eta\u8054\u7cfb\u540e\u518d\u53d6\u6d88\u54e6\uff01"

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->cancelStr:Ljava/lang/String;

    .line 37
    const-string v0, "\u8f66\u4e3b\u5e73\u5747\u63a5\u5355\u65f6\u95f4\u4e3a20\u5206\u949f\uff0c\u518d\u591a\u7b49\u4e00\u4f1a\u5427\uff01"

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->terminateStr:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$AdConfig;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 55
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$AdConfig;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 56
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$Didialift;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$Didialift;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    .line 57
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$DriverTask;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$DriverTask;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    .line 58
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$BtsButton;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$BtsButton;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    .line 59
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    .line 60
    return-void
.end method

.method public static getDefaultInstance()Lcom/didi/beatles/model/BtsConfig;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 71
    new-instance v2, Lcom/didi/beatles/model/BtsConfig;

    invoke-direct {v2}, Lcom/didi/beatles/model/BtsConfig;-><init>()V

    .line 73
    .local v2, bc:Lcom/didi/beatles/model/BtsConfig;
    iput-boolean v11, v2, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 75
    const-string v9, "0"

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->cityid:Ljava/lang/String;

    .line 76
    const-string v9, ""

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->city:Ljava/lang/String;

    .line 78
    const-string v9, "08:30"

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->worktime:Ljava/lang/String;

    .line 79
    const-string v9, "19:30"

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->hometime:Ljava/lang/String;

    .line 81
    const-string v9, "\u8f66\u4e3b\u5e73\u5747\u63a5\u5355\u65f6\u95f4\u4e3a20\u5206\u949f\uff0c\u518d\u591a\u7b49\u4e00\u4f1a\u5427\uff01"

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->cancelStr:Ljava/lang/String;

    .line 82
    const-string v9, "\u8f66\u4e3b\u5df2\u4e3a\u672c\u6b21\u51fa\u884c\u505a\u597d\u51c6\u5907\uff0c\u8bf7\u4e0eta\u8054\u7cfb\u540e\u518d\u53d6\u6d88\u54e6\uff01"

    iput-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->terminateStr:Ljava/lang/String;

    .line 85
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v12, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    .line 86
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "\u4e58\u5ba2\u65b0\u6d88\u606f"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->title:Ljava/lang/String;

    .line 87
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_round:Z

    .line 88
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->auto_expand:Z

    .line 89
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->show_red_point:Z

    .line 90
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    .line 92
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "\u4e58\u5ba2\u66f4\u591a\u65b0\u6d88\u606f"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_title:Ljava/lang/String;

    .line 93
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "http://www.sohu.com/"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_url:Ljava/lang/String;

    .line 95
    new-instance v3, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v3}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 96
    .local v3, p:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://mil.sohu.com/"

    iput-object v9, v3, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 97
    const-string v9, "http://img0.imgtn.bdimg.com/it/u=3194329433,1357640543&fm=21&gp=0.jpg"

    iput-object v9, v3, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 98
    const v9, 0x7f020037

    iput v9, v3, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 100
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v4, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v4}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 103
    .local v4, p1:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://yule.sohu.com/"

    iput-object v9, v4, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 104
    const-string v9, "http://img1.imgtn.bdimg.com/it/u=2055033666,636211525&fm=21&gp=0.jpg"

    iput-object v9, v4, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 105
    const v9, 0x7f020038

    iput v9, v4, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 106
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v5}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 109
    .local v5, p2:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://fashion.sohu.com/"

    iput-object v9, v5, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 110
    const-string v9, "http://img3.imgtn.bdimg.com/it/u=132021033,2187242388&fm=21&gp=0.jpg"

    iput-object v9, v5, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 111
    const v9, 0x7f020039

    iput v9, v5, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 112
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v12, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    .line 116
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "\u53f8\u673a\u66f4\u591a\u65b0\u6d88\u606f"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_title:Ljava/lang/String;

    .line 117
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v12, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_round:Z

    .line 118
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v12, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->auto_expand:Z

    .line 119
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->show_red_point:Z

    .line 120
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput v11, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->version:I

    .line 122
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "\u53f8\u673a\u65b0\u6d88\u606f"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->title:Ljava/lang/String;

    .line 123
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    const-string v10, "http://www.baidu.com/"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->btn_url:Ljava/lang/String;

    .line 125
    new-instance v6, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v6}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 126
    .local v6, p21:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://yule.sohu.com/"

    iput-object v9, v6, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 127
    const-string v9, "http://img1.imgtn.bdimg.com/it/u=2055033666,636211525&fm=21&gp=0.jpg"

    iput-object v9, v6, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 128
    const v9, 0x7f02002f

    iput v9, v6, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 129
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v7, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v7}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 132
    .local v7, p22:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://mil.sohu.com/"

    iput-object v9, v7, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 133
    const-string v9, "http://img0.imgtn.bdimg.com/it/u=3194329433,1357640543&fm=21&gp=0.jpg"

    iput-object v9, v7, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 134
    const v9, 0x7f020030

    iput v9, v7, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 135
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v8, Lcom/didi/beatles/model/BtsConfig$Page;

    invoke-direct {v8}, Lcom/didi/beatles/model/BtsConfig$Page;-><init>()V

    .line 138
    .local v8, p23:Lcom/didi/beatles/model/BtsConfig$Page;
    const-string v9, "http://fashion.sohu.com/"

    iput-object v9, v8, Lcom/didi/beatles/model/BtsConfig$Page;->url:Ljava/lang/String;

    .line 139
    const-string v9, "http://img3.imgtn.bdimg.com/it/u=132021033,2187242388&fm=21&gp=0.jpg"

    iput-object v9, v8, Lcom/didi/beatles/model/BtsConfig$Page;->img_url:Ljava/lang/String;

    .line 140
    const v9, 0x7f020031

    iput v9, v8, Lcom/didi/beatles/model/BtsConfig$Page;->img_resid:I

    .line 141
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$AdConfig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/didi/beatles/model/BtsConfig$Button;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig$Button;-><init>()V

    .line 145
    .local v0, b:Lcom/didi/beatles/model/BtsConfig$Button;
    const-string v9, "\u7acb\u5373\u6ce8\u518c\u8f66\u4e3b"

    iput-object v9, v0, Lcom/didi/beatles/model/BtsConfig$Button;->text:Ljava/lang/String;

    .line 146
    iput v11, v0, Lcom/didi/beatles/model/BtsConfig$Button;->style:I

    .line 147
    const-string v9, "http://wap.didialift.com/pinche/driver_recruit/appopen"

    iput-object v9, v0, Lcom/didi/beatles/model/BtsConfig$Button;->url:Ljava/lang/String;

    .line 148
    const-string v9, "\u7acb\u5373\u6ce8\u518c\u8f66\u4e3b"

    iput-object v9, v0, Lcom/didi/beatles/model/BtsConfig$Button;->title:Ljava/lang/String;

    .line 149
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$Button;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$Button;-><init>()V

    .line 152
    .local v1, b2:Lcom/didi/beatles/model/BtsConfig$Button;
    const-string v9, "\u4e00\u5206\u94b1\u5750\u987a\u98ce\u8f66"

    iput-object v9, v1, Lcom/didi/beatles/model/BtsConfig$Button;->text:Ljava/lang/String;

    .line 153
    iput v12, v1, Lcom/didi/beatles/model/BtsConfig$Button;->style:I

    .line 154
    const-string v9, "http://wap.didialift.com/pinche/subwaydog/guide"

    iput-object v9, v1, Lcom/didi/beatles/model/BtsConfig$Button;->url:Ljava/lang/String;

    .line 155
    const-string v9, "\u4e00\u5206\u94b1\u5750\u987a\u98ce\u8f66"

    iput-object v9, v1, Lcom/didi/beatles/model/BtsConfig$Button;->title:Ljava/lang/String;

    .line 156
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iget-object v9, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    iput v12, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_type:I

    .line 159
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    const-string v10, ""

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_1:Ljava/lang/String;

    .line 160
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    const-string v10, ""

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->pic_url_2:Ljava/lang/String;

    .line 161
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    const-string v10, "http://wap.didialift.com/pinche/native/guide"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$Didialift;->url:Ljava/lang/String;

    .line 164
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    iput-boolean v11, v9, Lcom/didi/beatles/model/BtsConfig$DriverTask;->show_red_point:Z

    .line 165
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    const-string v10, "http://mil.sohu.com/"

    iput-object v10, v9, Lcom/didi/beatles/model/BtsConfig$DriverTask;->url:Ljava/lang/String;

    .line 166
    iget-object v9, v2, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    const/16 v10, 0xd

    iput v10, v9, Lcom/didi/beatles/model/BtsConfig$DriverTask;->version:I

    .line 168
    return-object v2
.end method

.method public static getInstance()Lcom/didi/beatles/model/BtsConfig;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    if-nez v2, :cond_1

    .line 174
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getCityConfig()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getDefaultInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v2

    sput-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    .line 178
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->isBeatlesOnLine()Z

    move-result v3

    iput-boolean v3, v2, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 179
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getBtsCityId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/beatles/model/BtsConfig;->cityid:Ljava/lang/String;

    .line 180
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v4, v2, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    .line 181
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    iput-boolean v4, v2, Lcom/didi/beatles/model/BtsConfig$AdConfig;->is_show:Z

    .line 183
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    .line 194
    :goto_0
    return-object v2

    .line 186
    :cond_0
    new-instance v2, Lcom/didi/beatles/model/BtsConfig;

    invoke-direct {v2}, Lcom/didi/beatles/model/BtsConfig;-><init>()V

    sput-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    .line 188
    :try_start_0
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    invoke-virtual {v2, v1}, Lcom/didi/beatles/model/BtsConfig;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    goto :goto_0
.end method

.method public static newInstance()Lcom/didi/beatles/model/BtsConfig;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/didi/beatles/model/BtsConfig;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsConfig;-><init>()V

    return-object v0
.end method

.method public static setInstance(Lcom/didi/beatles/model/BtsConfig;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 63
    sput-object p0, Lcom/didi/beatles/model/BtsConfig;->sInstance:Lcom/didi/beatles/model/BtsConfig;

    .line 64
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOpenBeatles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 338
    invoke-super {p0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    invoke-super {p0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Lorg/json/JSONObject;)V

    .line 344
    const-string v1, "city_id"

    const-string v4, "0"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->cityid:Ljava/lang/String;

    .line 345
    const-string v1, "city_name"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->city:Ljava/lang/String;

    .line 346
    const-string v1, "is_open"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    .line 347
    const-string v1, "go_to_work_time"

    const-string v4, "09:00"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->worktime:Ljava/lang/String;

    .line 348
    const-string v1, "get_off_work_time"

    const-string v4, "18:00"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->hometime:Ljava/lang/String;

    .line 349
    const-string v1, "cancel_text"

    const-string v4, "\u8f66\u4e3b\u5df2\u4e3a\u672c\u6b21\u51fa\u884c\u505a\u597d\u51c6\u5907\uff0c\u8bf7\u4e0eta\u8054\u7cfb\u540e\u518d\u53d6\u6d88\u54e6\uff01"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->cancelStr:Ljava/lang/String;

    .line 350
    const-string v1, "terminate_text"

    const-string v4, "\u8f66\u4e3b\u5e73\u5747\u63a5\u5355\u65f6\u95f4\u4e3a20\u5206\u949f\uff0c\u518d\u591a\u7b49\u4e00\u4f1a\u5427\uff01"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->terminateStr:Ljava/lang/String;

    .line 352
    const-string v1, "open_free"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_8

    :goto_1
    iput-boolean v2, p0, Lcom/didi/beatles/model/BtsConfig;->isOpenFree:Z

    .line 355
    const-string v1, "ad_passenger"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "ad_passenger"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 357
    .local v0, subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$AdConfig;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 358
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->ad_passenger:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$AdConfig;->parse(Lorg/json/JSONObject;)V

    .line 361
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_0
    const-string v1, "ad_driver"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    const-string v1, "ad_driver"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 363
    .restart local v0       #subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$AdConfig;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    .line 364
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->ad_driver:Lcom/didi/beatles/model/BtsConfig$AdConfig;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$AdConfig;->parse(Lorg/json/JSONObject;)V

    .line 367
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_1
    const-string v1, "didialift"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 368
    const-string v1, "didialift"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 369
    .restart local v0       #subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$Didialift;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$Didialift;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    .line 370
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->didialift:Lcom/didi/beatles/model/BtsConfig$Didialift;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$Didialift;->parse(Lorg/json/JSONObject;)V

    .line 373
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_2
    const-string v1, "driver_task"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 374
    const-string v1, "driver_task"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 375
    .restart local v0       #subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$DriverTask;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$DriverTask;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    .line 376
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->driver_task:Lcom/didi/beatles/model/BtsConfig$DriverTask;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$DriverTask;->parse(Lorg/json/JSONObject;)V

    .line 378
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_3
    const-string v1, "button_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 379
    const-string v1, "button_text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 380
    .restart local v0       #subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$BtsButton;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$BtsButton;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    .line 381
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->bts_button:Lcom/didi/beatles/model/BtsConfig$BtsButton;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$BtsButton;->parse(Lorg/json/JSONObject;)V

    .line 383
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_4
    const-string v1, "switch_tab"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 384
    const-string v1, "switch_tab"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    .restart local v0       #subObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    invoke-direct {v1}, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    .line 386
    iget-object v1, p0, Lcom/didi/beatles/model/BtsConfig;->switch_tab:Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;

    invoke-virtual {v1, v0}, Lcom/didi/beatles/model/BtsConfig$BtsSwitchTab;->parse(Lorg/json/JSONObject;)V

    .line 388
    .end local v0           #subObj:Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {p0}, Lcom/didi/beatles/model/BtsConfig;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 389
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setCityConfig(Ljava/lang/String;)V

    .line 390
    invoke-static {p0}, Lcom/didi/beatles/model/BtsConfig;->setInstance(Lcom/didi/beatles/model/BtsConfig;)V

    .line 393
    :cond_6
    return-void

    :cond_7
    move v1, v3

    .line 346
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 352
    goto/16 :goto_1
.end method
